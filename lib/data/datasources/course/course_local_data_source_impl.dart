import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/course/course_local_data_source.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';

class CourseLocalDataSourceImpl implements CourseLocalDataSource {
  final DatabaseHelper databaseHelper;

  CourseLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheCourseModules(List<CourseModuleModel> modules) async {
    await databaseHelper.cacheCourseModules(modules);
  }

  @override
  Future<void> cacheLessonUnits(List<LessonUnitModel> units) async {
    await databaseHelper.cacheLessonUnits(units);
  }

  @override
  Future<void> cacheContentLessons(List<ContentLessonModel> lessons) async {
    await databaseHelper.cacheContentLessons(lessons);
  }

  @override
  Future<void> clearCourseModules() async {
    await databaseHelper.clearCourseModules();
  }

  @override
  Future<void> clearLessonUnits(String moduleId) async {
    await databaseHelper.clearLessonUnits(moduleId);
  }

  @override
  Future<void> clearContentLessons(String unitId) async {
    await databaseHelper.clearContentLessons(unitId);
  }

  @override
  Future<List<CourseModuleModel>> getLastCourseModules() async {
    final modules = await databaseHelper.getCourseModules();
    if (modules.isNotEmpty) {
      return modules;
    } else {
      throw const CacheException(message: 'No cached course modules found');
    }
  }

  @override
  Future<List<LessonUnitModel>> getLastLessonUnits(String moduleId) async {
    final units = await databaseHelper.getLessonUnits(moduleId);
    if (units.isNotEmpty) {
      return units;
    } else {
      throw const CacheException(message: 'No cached lesson units found');
    }
  }

  @override
  Future<List<ContentLessonModel>> getLastContentLessons(String unitId) async {
    final lessons = await databaseHelper.getContentLessons(unitId);
    if (lessons.isNotEmpty) {
      return lessons;
    } else {
      throw const CacheException(message: 'No cached content lessons found');
    }
  }
}
