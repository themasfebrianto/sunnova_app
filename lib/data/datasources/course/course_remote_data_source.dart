import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class CourseRemoteDataSource {
  /// Retrieves a list of all course modules.
  /// Throws [ServerException] for all error codes.
  Future<List<CourseModuleModel>> getCourseModules();

  /// Retrieves a list of lesson units for a given module ID.
  /// Throws [ServerException] for all error codes.
  Future<List<LessonUnitModel>> getLessonUnits(String moduleId);

  /// Retrieves a list of content lessons for a given unit ID.
  /// Throws [ServerException] for all error codes.
  Future<List<ContentLessonModel>> getContentLessons(String unitId);
}
