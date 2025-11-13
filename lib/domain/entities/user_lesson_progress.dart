import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_lesson_progress.freezed.dart';
part 'user_lesson_progress.g.dart';

/// Represents a user's progress in a lesson.
@freezed
abstract class UserLessonProgress with _$UserLessonProgress {
  const factory UserLessonProgress({
    required String id,
    required String userId,
    required String lessonId,
    required bool isCompleted,
    DateTime? completedAt,
    required int attempts,
    double? quizScore,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _UserLessonProgress;

  factory UserLessonProgress.fromJson(Map<String, dynamic> json) =>
      _$UserLessonProgressFromJson(json);
}
