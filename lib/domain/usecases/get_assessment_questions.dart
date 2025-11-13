import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetAssessmentQuestions {
  final AssessmentRepository repository;

  GetAssessmentQuestions(this.repository);

  Future<Either<Failure, List<AssessmentQuestion>>> call(String lessonId) async {
    return await repository.getAssessmentQuestions(lessonId);
  }
}

class GetAssessmentQuestionsParams extends Equatable {
  final String lessonId;

  const GetAssessmentQuestionsParams({required this.lessonId});

  @override
  List<Object?> get props => [lessonId];
}
