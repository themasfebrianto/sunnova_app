import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetQuestionHint {
  final AssessmentRepository repository;

  GetQuestionHint(this.repository);

  Future<Either<Failure, QuestionHint>> call(String questionId) async {
    return await repository.getQuestionHint(questionId);
  }
}

class GetQuestionHintParams extends Equatable {
  final String questionId;

  const GetQuestionHintParams({required this.questionId});

  @override
  List<Object?> get props => [questionId];
}
