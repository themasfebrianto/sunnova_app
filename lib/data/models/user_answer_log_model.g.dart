// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_answer_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAnswerLogModel _$UserAnswerLogModelFromJson(Map<String, dynamic> json) =>
    UserAnswerLogModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      questionId: json['questionId'] as String,
      selectedAnswerIndex: (json['selectedAnswerIndex'] as num).toInt(),
      isCorrect: json['isCorrect'] as bool,
      isHintUsed: json['isHintUsed'] as bool,
      attemptedAt: DateTime.parse(json['attemptedAt'] as String),
    );

Map<String, dynamic> _$UserAnswerLogModelToJson(UserAnswerLogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'questionId': instance.questionId,
      'selectedAnswerIndex': instance.selectedAnswerIndex,
      'isCorrect': instance.isCorrect,
      'isHintUsed': instance.isHintUsed,
      'attemptedAt': instance.attemptedAt.toIso8601String(),
    };
