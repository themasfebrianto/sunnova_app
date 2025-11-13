import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_lesson.freezed.dart';
part 'content_lesson.g.dart';

/// Represents a content lesson within a lesson unit.
@freezed
abstract class ContentLesson with _$ContentLesson {
  const factory ContentLesson({
    required String id,
    required String unitId,
    required String title,
    required String content,
    String? videoUrl,
    String? audioUrl,
    required int ordering,
    required int requiredTimeInSeconds,
    required int xpReward,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _ContentLesson;

  factory ContentLesson.fromJson(Map<String, dynamic> json) =>
      _$ContentLessonFromJson(json);
}
