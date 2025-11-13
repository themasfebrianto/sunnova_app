import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetCourseModules {
  final CourseRepository repository;

  GetCourseModules(this.repository);

  Future<Either<Failure, List<CourseModule>>> call() async {
    return await repository.getCourseModules();
  }
}
