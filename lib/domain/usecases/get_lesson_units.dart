import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetLessonUnits {
  final CourseRepository repository;

  GetLessonUnits(this.repository);

  Future<Either<Failure, List<LessonUnit>>> call(String moduleId) async {
    return await repository.getLessonUnits(moduleId);
  }
}

class GetLessonUnitsParams extends Equatable {
  final String moduleId;

  const GetLessonUnitsParams({required this.moduleId});

  @override
  List<Object?> get props => [moduleId];
}
