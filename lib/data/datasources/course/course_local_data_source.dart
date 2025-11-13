import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class CourseLocalDataSource {
  /// Retrieves cached course modules.
  /// Throws [CacheException] if no data is present.
  Future<List<CourseModuleModel>> getLastCourseModules();

  /// Caches a list of [CourseModuleModel].
  Future<void> cacheCourseModules(List<CourseModuleModel> modules);

  /// Clears cached course modules.
  Future<void> clearCourseModules();

  /// Retrieves cached lesson units for a given module ID.
  /// Throws [CacheException] if no data is present.
  Future<List<LessonUnitModel>> getLastLessonUnits(String moduleId);

  /// Caches a list of [LessonUnitModel].
  Future<void> cacheLessonUnits(List<LessonUnitModel> units);

  /// Clears cached lesson units for a given module ID.
  Future<void> clearLessonUnits(String moduleId);

  /// Retrieves cached content lessons for a given unit ID.
  /// Throws [CacheException] if no data is present.
  Future<List<ContentLessonModel>> getLastContentLessons(String unitId);

  /// Caches a list of [ContentLessonModel].
  Future<void> cacheContentLessons(List<ContentLessonModel> lessons);

  /// Clears cached content lessons for a given unit ID.
  Future<void> clearContentLessons(String unitId);
}
