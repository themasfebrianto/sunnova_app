// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_lesson_progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLessonProgressModel _$UserLessonProgressModelFromJson(
  Map<String, dynamic> json,
) => UserLessonProgressModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  lessonId: json['lessonId'] as String,
  isCompleted: json['isCompleted'] as bool,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  attempts: (json['attempts'] as num).toInt(),
  quizScore: (json['quizScore'] as num?)?.toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserLessonProgressModelToJson(
  UserLessonProgressModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'lessonId': instance.lessonId,
  'isCompleted': instance.isCompleted,
  'completedAt': instance.completedAt?.toIso8601String(),
  'attempts': instance.attempts,
  'quizScore': instance.quizScore,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
