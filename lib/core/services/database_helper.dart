import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';
import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';
import 'package:sunnova_app/data/models/assessment_question_model.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';
import 'package:sunnova_app/data/models/question_hint_model.dart';
import 'package:sunnova_app/data/models/item_shop_model.dart';
import 'package:sunnova_app/data/models/user_inventory_model.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart'; // New import
import 'package:sunnova_app/data/models/user_worship_log_model.dart'; // New import
import 'dart:convert'; // For JSON encoding/decoding List<String>

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'sunnova_app.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE UserProfile (
        uid TEXT PRIMARY KEY,
        email TEXT,
        displayName TEXT,
        photoURL TEXT,
        gender TEXT,
        fcmToken TEXT,
        isPremium INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        lastLoginAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserGameStats (
        userId TEXT PRIMARY KEY,
        totalXp INTEGER NOT NULL,
        level INTEGER NOT NULL,
        currentStreak INTEGER NOT NULL,
        longestStreak INTEGER NOT NULL,
        lastActiveDate TEXT,
        totalLessonsCompleted INTEGER NOT NULL,
        totalQuizzesPassed INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserLessonProgress (
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        lessonId TEXT NOT NULL,
        isCompleted INTEGER NOT NULL,
        completedAt TEXT,
        attempts INTEGER NOT NULL,
        quizScore REAL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE Badge (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        icon TEXT NOT NULL,
        targetValue INTEGER NOT NULL,
        gemReward INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserAchievement (
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        badgeId TEXT NOT NULL,
        unlockedAt TEXT NOT NULL,
        isNew INTEGER NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE LeaderboardRank (
        rankType TEXT NOT NULL,
        userId TEXT NOT NULL,
        scoreValue INTEGER NOT NULL,
        rank INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        PRIMARY KEY (rankType, userId)
      )
    ''');
    await db.execute('''
      CREATE TABLE AssessmentQuestion (
        id TEXT PRIMARY KEY,
        lessonId TEXT NOT NULL,
        question TEXT NOT NULL,
        options TEXT NOT NULL, -- Stored as JSON string
        correctAnswerIndex INTEGER NOT NULL,
        explanation TEXT NOT NULL,
        difficultyLevel INTEGER NOT NULL,
        ordering INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserAnswerLog (
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        questionId TEXT NOT NULL,
        selectedAnswerIndex INTEGER NOT NULL,
        isCorrect INTEGER NOT NULL,
        isHintUsed INTEGER NOT NULL,
        attemptedAt TEXT NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE QuestionHint (
        questionId TEXT PRIMARY KEY,
        hintText TEXT NOT NULL,
        gemCost INTEGER NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE ItemShop (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        icon TEXT NOT NULL,
        gemCost INTEGER NOT NULL,
        effect TEXT NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserInventory (
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        itemId TEXT NOT NULL,
        quantity INTEGER NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE CourseModule (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        icon TEXT NOT NULL,
        ordering INTEGER NOT NULL,
        requiredXpToUnlock INTEGER NOT NULL,
        isLocked INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE LessonUnit (
        id TEXT PRIMARY KEY,
        moduleId TEXT NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        ordering INTEGER NOT NULL,
        requiredLevel INTEGER,
        isLocked INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE ContentLesson (
        id TEXT PRIMARY KEY,
        unitId TEXT NOT NULL,
        title TEXT NOT NULL,
        content TEXT NOT NULL,
        videoUrl TEXT,
        audioUrl TEXT,
        ordering INTEGER NOT NULL,
        requiredTimeInSeconds INTEGER NOT NULL,
        xpReward INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE DailyWorship (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        icon TEXT NOT NULL,
        category TEXT NOT NULL,
        gemReward INTEGER NOT NULL,
        xpReward INTEGER NOT NULL,
        isRepeatable INTEGER NOT NULL,
        isDefault INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE UserWorshipLog (
        id TEXT PRIMARY KEY,
        userId TEXT NOT NULL,
        worshipId TEXT NOT NULL,
        date TEXT NOT NULL,
        isCompleted INTEGER NOT NULL,
        completedAt TEXT,
        currentValue INTEGER NOT NULL
      )
    ''');
  }

  // Generic method to insert/update a model
  Future<int> insertOrUpdate(
    String tableName,
    Map<String, dynamic> data,
    String primaryKeyColumn,
  ) async {
    final db = await database;
    return await db.insert(
      tableName,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Generic method to get a model by primary key
  Future<Map<String, dynamic>?> getById(
    String tableName,
    String primaryKeyColumn,
    String id,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: '$primaryKeyColumn = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Generic method to delete a model by primary key
  Future<int> deleteById(
    String tableName,
    String primaryKeyColumn,
    String id,
  ) async {
    final db = await database;
    return await db.delete(
      tableName,
      where: '$primaryKeyColumn = ?',
      whereArgs: [id],
    );
  }

  // Specific methods for UserProfile
  Future<void> cacheUserProfile(UserProfileModel userProfile) async {
    final db = await database;
    await db.insert(
      'UserProfile',
      userProfile.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<UserProfileModel?> getUserProfile() async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query('UserProfile', limit: 1);
    if (maps.isNotEmpty) {
      return UserProfileModel.fromJson(maps.first);
    }
    return null;
  }

  Future<void> clearUserProfile() async {
    final db = await database;
    await db.delete('UserProfile');
  }

  // Specific methods for UserGameStats
  Future<void> cacheUserGameStats(UserGameStatsModel stats) async {
    final db = await database;
    await db.insert(
      'UserGameStats',
      stats.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<UserGameStatsModel?> getUserGameStats(String userId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserGameStats',
      where: 'userId = ?',
      whereArgs: [userId],
      limit: 1,
    );
    if (maps.isNotEmpty) {
      return UserGameStatsModel.fromJson(maps.first);
    }
    return null;
  }

  Future<void> clearUserGameStats(String userId) async {
    final db = await database;
    await db.delete('UserGameStats', where: 'userId = ?', whereArgs: [userId]);
  }

  // Specific methods for UserLessonProgress
  Future<void> cacheUserLessonProgress(
    List<UserLessonProgressModel> progressList,
  ) async {
    final db = await database;
    for (var progress in progressList) {
      await db.insert(
        'UserLessonProgress',
        progress.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<UserLessonProgressModel>> getUserLessonProgress(
    String userId,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserLessonProgress',
      where: 'userId = ?',
      whereArgs: [userId],
    );
    return maps.map((map) => UserLessonProgressModel.fromJson(map)).toList();
  }

  Future<void> clearUserLessonProgress(String userId) async {
    final db = await database;
    await db.delete(
      'UserLessonProgress',
      where: 'userId = ?',
      whereArgs: [userId],
    );
  }

  // Specific methods for Badge
  Future<void> cacheBadges(List<BadgeModel> badges) async {
    final db = await database;
    for (var badge in badges) {
      await db.insert(
        'Badge',
        badge.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<BadgeModel>> getBadges() async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query('Badge');
    return maps.map((map) => BadgeModel.fromJson(map)).toList();
  }

  Future<void> clearBadges() async {
    final db = await database;
    await db.delete('Badge');
  }

  // Specific methods for UserAchievement
  Future<void> cacheUserAchievements(
    List<UserAchievementModel> achievements,
  ) async {
    final db = await database;
    for (var achievement in achievements) {
      await db.insert(
        'UserAchievement',
        achievement.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<UserAchievementModel>> getUserAchievements(String userId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserAchievement',
      where: 'userId = ?',
      whereArgs: [userId],
    );
    return maps.map((map) => UserAchievementModel.fromJson(map)).toList();
  }

  Future<void> clearUserAchievements(String userId) async {
    final db = await database;
    await db.delete(
      'UserAchievement',
      where: 'userId = ?',
      whereArgs: [userId],
    );
  }

  // Specific methods for LeaderboardRank
  Future<void> cacheLeaderboardRanks(List<LeaderboardRankModel> ranks) async {
    final db = await database;
    for (var rank in ranks) {
      await db.insert(
        'LeaderboardRank',
        rank.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<LeaderboardRankModel>> getLeaderboardRanks(
    String rankType,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'LeaderboardRank',
      where: 'rankType = ?',
      whereArgs: [rankType],
    );
    return maps.map((map) => LeaderboardRankModel.fromJson(map)).toList();
  }

  Future<void> clearLeaderboardRanks(String rankType) async {
    final db = await database;
    await db.delete(
      'LeaderboardRank',
      where: 'rankType = ?',
      whereArgs: [rankType],
    );
  }

  // Specific methods for AssessmentQuestion
  Future<void> cacheAssessmentQuestions(
    List<AssessmentQuestionModel> questions,
  ) async {
    final db = await database;
    await db.transaction((txn) async {
      for (var question in questions) {
        final questionMap = question.toJson();
        questionMap['options'] = jsonEncode(
          question.options,
        ); // Encode List<String>
        await txn.insert(
          'AssessmentQuestion',
          questionMap,
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  Future<List<AssessmentQuestionModel>> getAssessmentQuestions(
    String lessonId,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'AssessmentQuestion',
      where: 'lessonId = ?',
      whereArgs: [lessonId],
    );
    return maps.map((map) {
      map['options'] = List<String>.from(
        jsonDecode(map['options'] as String),
      ); // Decode List<String>
      return AssessmentQuestionModel.fromJson(map);
    }).toList();
  }

  Future<void> clearAssessmentQuestions(String lessonId) async {
    final db = await database;
    await db.delete(
      'AssessmentQuestion',
      where: 'lessonId = ?',
      whereArgs: [lessonId],
    );
  }

  // Specific methods for UserAnswerLog
  Future<void> cacheUserAnswerLog(UserAnswerLogModel answerLog) async {
    final db = await database;
    await db.insert(
      'UserAnswerLog',
      answerLog.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<UserAnswerLogModel?> getUserAnswerLog(
    String userId,
    String questionId,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserAnswerLog',
      where: 'userId = ? AND questionId = ?',
      whereArgs: [userId, questionId],
      limit: 1,
    );
    if (maps.isNotEmpty) {
      return UserAnswerLogModel.fromJson(maps.first);
    }
    return null;
  }

  Future<void> clearUserAnswerLog(String userId, String questionId) async {
    final db = await database;
    await db.delete(
      'UserAnswerLog',
      where: 'userId = ? AND questionId = ?',
      whereArgs: [userId, questionId],
    );
  }

  // Specific methods for QuestionHint
  Future<void> cacheQuestionHint(QuestionHintModel hint) async {
    final db = await database;
    await db.insert(
      'QuestionHint',
      hint.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<QuestionHintModel?> getQuestionHint(String questionId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'QuestionHint',
      where: 'questionId = ?',
      whereArgs: [questionId],
      limit: 1,
    );
    if (maps.isNotEmpty) {
      return QuestionHintModel.fromJson(maps.first);
    }
    return null;
  }

  Future<void> clearQuestionHint(String questionId) async {
    final db = await database;
    await db.delete(
      'QuestionHint',
      where: 'questionId = ?',
      whereArgs: [questionId],
    );
  }

  // Specific methods for ItemShop
  Future<void> cacheItemShopEntities(List<ItemShopModel> items) async {
    final db = await database;
    for (var item in items) {
      await db.insert(
        'ItemShop',
        item.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<ItemShopModel>> getItemShopEntities() async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query('ItemShop');
    return maps.map((map) => ItemShopModel.fromJson(map)).toList();
  }

  Future<void> clearItemShopEntities() async {
    final db = await database;
    await db.delete('ItemShop');
  }

  // Specific methods for UserInventory
  Future<void> cacheUserInventory(List<UserInventoryModel> inventory) async {
    final db = await database;
    for (var item in inventory) {
      await db.insert(
        'UserInventory',
        item.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<UserInventoryModel>> getUserInventory(String userId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'UserInventory',
      where: 'userId = ?',
      whereArgs: [userId],
    );
    return maps.map((map) => UserInventoryModel.fromJson(map)).toList();
  }

  Future<void> clearUserInventory(String userId) async {
    final db = await database;
    await db.delete('UserInventory', where: 'userId = ?', whereArgs: [userId]);
  }

  // Specific methods for CourseModule
  Future<void> cacheCourseModules(List<CourseModuleModel> modules) async {
    final db = await database;
    for (var module in modules) {
      await db.insert(
        'CourseModule',
        module.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<CourseModuleModel>> getCourseModules() async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query('CourseModule');
    return maps.map((map) => CourseModuleModel.fromJson(map)).toList();
  }

  Future<void> clearCourseModules() async {
    final db = await database;
    await db.delete('CourseModule');
  }

  // Specific methods for LessonUnit
  Future<void> cacheLessonUnits(List<LessonUnitModel> units) async {
    final db = await database;
    for (var unit in units) {
      await db.insert(
        'LessonUnit',
        unit.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<LessonUnitModel>> getLessonUnits(String moduleId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'LessonUnit',
      where: 'moduleId = ?',
      whereArgs: [moduleId],
    );
    return maps.map((map) => LessonUnitModel.fromJson(map)).toList();
  }

  Future<void> clearLessonUnits(String moduleId) async {
    final db = await database;
    await db.delete('LessonUnit', where: 'moduleId = ?', whereArgs: [moduleId]);
  }

  // Specific methods for ContentLesson
  Future<void> cacheContentLessons(List<ContentLessonModel> lessons) async {
    final db = await database;
    for (var lesson in lessons) {
      await db.insert(
        'ContentLesson',
        lesson.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<ContentLessonModel>> getContentLessons(String unitId) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query(
      'ContentLesson',
      where: 'unitId = ?',
      whereArgs: [unitId],
    );
    return maps.map((map) => ContentLessonModel.fromJson(map)).toList();
  }

  Future<void> clearContentLessons(String unitId) async {
    final db = await database;
    await db.delete('ContentLesson', where: 'unitId = ?', whereArgs: [unitId]);
  }

  // Specific methods for DailyWorship
  Future<void> cacheDailyWorshipActivities(
    List<DailyWorshipModel> activities,
  ) async {
    final db = await database;
    for (var activity in activities) {
      await db.insert(
        'DailyWorship',
        activity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<DailyWorshipModel>> getDailyWorshipActivities() async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db.query('DailyWorship');
    return maps.map((map) => DailyWorshipModel.fromJson(map)).toList();
  }

  Future<void> clearDailyWorshipActivities() async {
    final db = await database;
    await db.delete('DailyWorship');
  }

  // Specific methods for UserWorshipLog
  Future<void> cacheUserWorshipLogs(List<UserWorshipLogModel> logs) async {
    final db = await database;
    for (var log in logs) {
      await db.insert(
        'UserWorshipLog',
        log.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<UserWorshipLogModel>> getUserWorshipLogs(
    String userId,
    DateTime date,
  ) async {
    final db = await database;
    String dateOnly = date
        .toIso8601String()
        .split('T')
        .first; // ambil yyyy-MM-dd
    List<Map<String, dynamic>> maps = await db.query(
      'UserWorshipLog',
      where: 'userId = ? AND date LIKE ?',
      whereArgs: [userId, '$dateOnly%'],
    );
    return maps.map((map) => UserWorshipLogModel.fromJson(map)).toList();
  }

  Future<void> clearUserWorshipLogs(String userId) async {
    final db = await database;
    await db.delete('UserWorshipLog', where: 'userId = ?', whereArgs: [userId]);
  }
}
