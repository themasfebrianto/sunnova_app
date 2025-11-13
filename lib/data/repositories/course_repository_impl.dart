import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/course_module.dart';
import 'package:sunnova_app/domain/entities/lesson_unit.dart';
import 'package:sunnova_app/domain/entities/content_lesson.dart';
import 'package:sunnova_app/domain/repositories/course_repository.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;

  CourseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CourseModule>>> getCourseModules() async {
    try {
      final courseModuleModels = await remoteDataSource.getCourseModules();
      return Right(courseModuleModels.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<LessonUnit>>> getLessonUnits(String moduleId) async {
    try {
      final lessonUnitModels = await remoteDataSource.getLessonUnits(moduleId);
      return Right(lessonUnitModels.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ContentLesson>>> getContentLessons(String unitId) async {
    try {
      final contentLessonModels = await remoteDataSource.getContentLessons(unitId);
      return Right(contentLessonModels.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
