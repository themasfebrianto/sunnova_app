import 'package:sunnova_app/data/models/assessment_question_model.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';
import 'package:sunnova_app/data/models/question_hint_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class AssessmentLocalDataSource {
  /// Retrieves cached assessment questions for a given lesson ID.
  /// Throws [CacheException] if no data is present.
  Future<List<AssessmentQuestionModel>> getLastAssessmentQuestions(String lessonId);

  /// Caches a list of [AssessmentQuestionModel].
  Future<void> cacheAssessmentQuestions(List<AssessmentQuestionModel> questions);

  /// Clears cached assessment questions for a given lesson ID.
  Future<void> clearAssessmentQuestions(String lessonId);

  /// Retrieves cached user answer logs for a given user ID and question ID.
  /// Throws [CacheException] if no data is present.
  Future<UserAnswerLogModel> getLastUserAnswerLog(String userId, String questionId);

  /// Caches a [UserAnswerLogModel].
  Future<void> cacheUserAnswerLog(UserAnswerLogModel answerLog);

  /// Clears cached user answer logs for a given user ID and question ID.
  Future<void> clearUserAnswerLog(String userId, String questionId);

  /// Retrieves cached question hint for a given question ID.
  /// Throws [CacheException] if no data is present.
  Future<QuestionHintModel> getLastQuestionHint(String questionId);

  /// Caches a [QuestionHintModel].
  Future<void> cacheQuestionHint(QuestionHintModel hint);

  /// Clears cached question hint for a given question ID.
  Future<void> clearQuestionHint(String questionId);
}
