import 'package:sqflite/sqflite.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_local_data_source.dart';
import 'package:sunnova_app/data/models/assessment_question_model.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';
import 'package:sunnova_app/data/models/question_hint_model.dart';
import 'dart:convert'; // For JSON encoding/decoding List<String>

class AssessmentLocalDataSourceImpl implements AssessmentLocalDataSource {
  final DatabaseHelper databaseHelper;

  AssessmentLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheAssessmentQuestions(
    List<AssessmentQuestionModel> questions,
  ) async {
    final db = await databaseHelper.database;
    await db.transaction((txn) async {
      for (var question in questions) {
        final questionMap = question.toJson();
        // Convert List<String> options to JSON string for storage
        questionMap['options'] = jsonEncode(question.options);
        await txn.insert(
          'AssessmentQuestion',
          questionMap,
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  @override
  Future<void> cacheQuestionHint(QuestionHintModel hint) async {
    final db = await databaseHelper.database;
    await db.insert(
      'QuestionHint',
      hint.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> cacheUserAnswerLog(UserAnswerLogModel answerLog) async {
    final db = await databaseHelper.database;
    await db.insert(
      'UserAnswerLog',
      answerLog.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> clearAssessmentQuestions(String lessonId) async {
    final db = await databaseHelper.database;
    await db.delete(
      'AssessmentQuestion',
      where: 'lessonId = ?',
      whereArgs: [lessonId],
    );
  }

  @override
  Future<void> clearQuestionHint(String questionId) async {
    final db = await databaseHelper.database;
    await db.delete(
      'QuestionHint',
      where: 'questionId = ?',
      whereArgs: [questionId],
    );
  }

  @override
  Future<void> clearUserAnswerLog(String userId, String questionId) async {
    final db = await databaseHelper.database;
    await db.delete(
      'UserAnswerLog',
      where: 'userId = ? AND questionId = ?',
      whereArgs: [userId, questionId],
    );
  }

  @override
  Future<List<AssessmentQuestionModel>> getLastAssessmentQuestions(
    String lessonId,
  ) async {
    final db = await databaseHelper.database;
    List<Map<String, dynamic>> maps = await db.query(
      'AssessmentQuestion',
      where: 'lessonId = ?',
      whereArgs: [lessonId],
    );
    if (maps.isNotEmpty) {
      return maps.map((map) {
        // Decode JSON string back to List<String>
        map['options'] = List<String>.from(
          jsonDecode(map['options'] as String),
        );
        return AssessmentQuestionModel.fromJson(map);
      }).toList();
    } else {
      throw const CacheException(
        message: 'No cached assessment questions found',
      );
    }
  }

  @override
  Future<QuestionHintModel> getLastQuestionHint(String questionId) async {
    final db = await databaseHelper.database;
    List<Map<String, dynamic>> maps = await db.query(
      'QuestionHint',
      where: 'questionId = ?',
      whereArgs: [questionId],
      limit: 1,
    );
    if (maps.isNotEmpty) {
      return QuestionHintModel.fromJson(maps.first);
    } else {
      throw const CacheException(message: 'No cached question hint found');
    }
  }

  @override
  Future<UserAnswerLogModel> getLastUserAnswerLog(
    String userId,
    String questionId,
  ) async {
    final db = await databaseHelper.database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserAnswerLog',
      where: 'userId = ? AND questionId = ?',
      whereArgs: [userId, questionId],
      limit: 1,
    );
    if (maps.isNotEmpty) {
      return UserAnswerLogModel.fromJson(maps.first);
    } else {
      throw const CacheException(message: 'No cached user answer log found');
    }
  }
}
