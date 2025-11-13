// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssessmentQuestion _$AssessmentQuestionFromJson(Map<String, dynamic> json) =>
    _AssessmentQuestion(
      id: json['id'] as String,
      lessonId: json['lessonId'] as String,
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctAnswerIndex: (json['correctAnswerIndex'] as num).toInt(),
      explanation: json['explanation'] as String,
      difficultyLevel: (json['difficultyLevel'] as num).toInt(),
      ordering: (json['ordering'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AssessmentQuestionToJson(_AssessmentQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonId': instance.lessonId,
      'question': instance.question,
      'options': instance.options,
      'correctAnswerIndex': instance.correctAnswerIndex,
      'explanation': instance.explanation,
      'difficultyLevel': instance.difficultyLevel,
      'ordering': instance.ordering,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
