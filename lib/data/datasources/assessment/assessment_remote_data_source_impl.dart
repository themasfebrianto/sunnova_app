import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_remote_data_source.dart';
import 'package:sunnova_app/data/models/assessment_question_model.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';
import 'package:sunnova_app/data/models/question_hint_model.dart';

class AssessmentRemoteDataSourceImpl implements AssessmentRemoteDataSource {
  @override
  Future<List<AssessmentQuestionModel>> getAssessmentQuestions(String lessonId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (lessonId == 'lesson1') {
      return [
        AssessmentQuestionModel(
          id: 'aq1',
          lessonId: lessonId,
          question: 'Apa hukum nun sukun bertemu ba?',
          options: ['Iqlab', 'Idzhar', 'Idgham', 'Ikhfa'],
          correctAnswerIndex: 0,
          explanation: 'Hukum nun sukun bertemu ba adalah Iqlab.',
          difficultyLevel: 1,
          ordering: 1,
          createdAt: DateTime.now(),
        ),
        AssessmentQuestionModel(
          id: 'aq2',
          lessonId: lessonId,
          question: 'Berapa huruf Idzhar Halqi?',
          options: ['5', '6', '7', '8'],
          correctAnswerIndex: 1,
          explanation: 'Huruf Idzhar Halqi ada 6.',
          difficultyLevel: 1,
          ordering: 2,
          createdAt: DateTime.now(),
        ),
      ];
    }
    throw ServerException(message: 'Lesson not found or no questions available');
  }

  @override
  Future<UserAnswerLogModel> submitAnswer(UserAnswerLogModel answerLog) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    // Simulate processing the answer
    return UserAnswerLogModel(
      id: 'ual1',
      userId: answerLog.userId,
      questionId: answerLog.questionId,
      selectedAnswerIndex: answerLog.selectedAnswerIndex,
      isCorrect: answerLog.selectedAnswerIndex == 0, // Example logic
      isHintUsed: answerLog.isHintUsed,
      attemptedAt: DateTime.now(),
    );
  }

  @override
  Future<QuestionHintModel> getQuestionHint(String questionId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (questionId == 'aq1') {
      return QuestionHintModel(
        questionId: questionId,
        hintText: 'Perhatikan perubahan bunyi nun sukun menjadi mim.',
        gemCost: 5,
      );
    }
    throw ServerException(message: 'Hint not available for this question');
  }
}
