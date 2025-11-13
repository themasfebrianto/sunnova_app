import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_module.freezed.dart';
part 'course_module.g.dart';

/// Represents a course module in the application.
@freezed
abstract class CourseModule with _$CourseModule {
  const factory CourseModule({
    required String id,
    required String title,
    required String description,
    required String icon,
    required int ordering,
    required int requiredXpToUnlock,
    required bool isLocked,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _CourseModule;

  factory CourseModule.fromJson(Map<String, dynamic> json) =>
      _$CourseModuleFromJson(json);
}
