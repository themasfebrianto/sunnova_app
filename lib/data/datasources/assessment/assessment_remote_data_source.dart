import 'package:sunnova_app/data/models/assessment_question_model.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';
import 'package:sunnova_app/data/models/question_hint_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class AssessmentRemoteDataSource {
  /// Retrieves a list of assessment questions for a given lesson ID.
  /// Throws [ServerException] for all error codes.
  Future<List<AssessmentQuestionModel>> getAssessmentQuestions(String lessonId);

  /// Submits a user's answer and returns the updated log.
  /// Throws [ServerException] for all error codes.
  Future<UserAnswerLogModel> submitAnswer(UserAnswerLogModel answerLog);

  /// Retrieves a hint for a specific question.
  /// Throws [ServerException] for all error codes.
  Future<QuestionHintModel> getQuestionHint(String questionId);
}
