import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetContentLessons {
  final CourseRepository repository;

  GetContentLessons(this.repository);

  Future<Either<Failure, List<ContentLesson>>> call(String unitId) async {
    return await repository.getContentLessons(unitId);
  }
}

class GetContentLessonsParams extends Equatable {
  final String unitId;

  const GetContentLessonsParams({required this.unitId});

  @override
  List<Object?> get props => [unitId];
}
