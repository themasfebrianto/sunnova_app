import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/course_module.dart';
import 'package:sunnova_app/domain/entities/lesson_unit.dart';
import 'package:sunnova_app/domain/entities/content_lesson.dart';
import 'package:sunnova_app/domain/repositories/course_repository.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/course/course_local_data_source.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;
  final CourseLocalDataSource localDataSource;

  CourseRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<CourseModule>>> getCourseModules() async {
    try {
      final localModules = await localDataSource.getLastCourseModules();
      return Right(localModules.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteModules = await remoteDataSource.getCourseModules();
        await localDataSource.cacheCourseModules(remoteModules);
        return Right(remoteModules.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<LessonUnit>>> getLessonUnits(String moduleId) async {
    try {
      final localUnits = await localDataSource.getLastLessonUnits(moduleId);
      return Right(localUnits.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteUnits = await remoteDataSource.getLessonUnits(moduleId);
        await localDataSource.cacheLessonUnits(remoteUnits);
        return Right(remoteUnits.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ContentLesson>>> getContentLessons(String unitId) async {
    try {
      final localLessons = await localDataSource.getLastContentLessons(unitId);
      return Right(localLessons.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteLessons = await remoteDataSource.getContentLessons(unitId);
        await localDataSource.cacheContentLessons(remoteLessons);
        return Right(remoteLessons.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
