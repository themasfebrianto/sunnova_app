import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_unit.freezed.dart';
part 'lesson_unit.g.dart';

/// Represents a lesson unit within a course module.
@freezed
abstract class LessonUnit with _$LessonUnit {
  const factory LessonUnit({
    required String id,
    required String moduleId,
    required String title,
    required String description,
    required int ordering,
    int? requiredLevel,
    required bool isLocked,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _LessonUnit;

  factory LessonUnit.fromJson(Map<String, dynamic> json) =>
      _$LessonUnitFromJson(json);
}
