import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class CourseRepository {
  Future<Either<Failure, List<CourseModule>>> getCourseModules();
  Future<Either<Failure, List<LessonUnit>>> getLessonUnits(String moduleId);
  Future<Either<Failure, List<ContentLesson>>> getContentLessons(String unitId);
}
