import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_lesson_progress_model.g.dart';

@Collection()
@JsonSerializable()
class UserLessonProgressModel {
  Id? isarId;

  final String id;
  final String userId;
  final String lessonId;
  final bool isCompleted;
  final DateTime? completedAt;
  final int attempts;
  final double? quizScore;
  final DateTime createdAt;
  final DateTime? updatedAt;

  UserLessonProgressModel({
    this.isarId,
    required this.id,
    required this.userId,
    required this.lessonId,
    required this.isCompleted,
    this.completedAt,
    required this.attempts,
    this.quizScore,
    required this.createdAt,
    this.updatedAt,
  });

  UserLessonProgress toEntity() {
    return UserLessonProgress(
      id: id,
      userId: userId,
      lessonId: lessonId,
      isCompleted: isCompleted,
      completedAt: completedAt,
      attempts: attempts,
      quizScore: quizScore,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory UserLessonProgressModel.fromEntity(UserLessonProgress entity) {
    return UserLessonProgressModel(
      id: entity.id,
      userId: entity.userId,
      lessonId: entity.lessonId,
      isCompleted: entity.isCompleted,
      completedAt: entity.completedAt,
      attempts: entity.attempts,
      quizScore: entity.quizScore,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory UserLessonProgressModel.fromJson(Map<String, dynamic> json) =>
      _$UserLessonProgressModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserLessonProgressModelToJson(this);
}
