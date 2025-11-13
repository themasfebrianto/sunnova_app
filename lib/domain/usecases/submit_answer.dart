import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class SubmitAnswer {
  final AssessmentRepository repository;

  SubmitAnswer(this.repository);

  Future<Either<Failure, UserAnswerLog>> call(UserAnswerLog answerLog) async {
    return await repository.submitAnswer(answerLog);
  }
}
