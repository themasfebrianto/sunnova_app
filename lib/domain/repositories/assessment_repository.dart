import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class AssessmentRepository {
  Future<Either<Failure, List<AssessmentQuestion>>> getAssessmentQuestions(String lessonId);
  Future<Either<Failure, UserAnswerLog>> submitAnswer(UserAnswerLog answerLog);
  Future<Either<Failure, QuestionHint>> getQuestionHint(String questionId);
}
