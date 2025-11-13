import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/assessment_question.dart';
import 'package:sunnova_app/domain/entities/user_answer_log.dart';
import 'package:sunnova_app/domain/entities/question_hint.dart';
import 'package:sunnova_app/domain/repositories/assessment_repository.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_local_data_source.dart';
import 'package:sunnova_app/data/models/user_answer_log_model.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {
  final AssessmentRemoteDataSource remoteDataSource;
  final AssessmentLocalDataSource localDataSource;

  AssessmentRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<AssessmentQuestion>>> getAssessmentQuestions(String lessonId) async {
    try {
      final localQuestions = await localDataSource.getLastAssessmentQuestions(lessonId);
      return Right(localQuestions.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteQuestions = await remoteDataSource.getAssessmentQuestions(lessonId);
        await localDataSource.cacheAssessmentQuestions(remoteQuestions);
        return Right(remoteQuestions.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserAnswerLog>> submitAnswer(UserAnswerLog answerLog) async {
    try {
      final answerLogModel = UserAnswerLogModel.fromEntity(answerLog);
      final submittedAnswer = await remoteDataSource.submitAnswer(answerLogModel);
      await localDataSource.cacheUserAnswerLog(submittedAnswer); // Cache the submitted answer
      return Right(submittedAnswer.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, QuestionHint>> getQuestionHint(String questionId) async {
    try {
      final localHint = await localDataSource.getLastQuestionHint(questionId);
      return Right(localHint.toEntity());
    } on CacheException catch (_) {
      try {
        final remoteHint = await remoteDataSource.getQuestionHint(questionId);
        await localDataSource.cacheQuestionHint(remoteHint);
        return Right(remoteHint.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
