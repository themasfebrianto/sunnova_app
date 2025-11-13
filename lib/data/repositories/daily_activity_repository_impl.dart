import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/daily_worship.dart';
import 'package:sunnova_app/domain/entities/user_worship_log.dart';
import 'package:sunnova_app/domain/repositories/daily_activity_repository.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

class DailyActivityRepositoryImpl implements DailyActivityRepository {
  final DailyActivityRemoteDataSource remoteDataSource;

  DailyActivityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<DailyWorship>>> getDailyWorships() async {
    try {
      final dailyWorshipModels = await remoteDataSource.getDailyWorships();
      return Right(dailyWorshipModels.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> logUserWorship(UserWorshipLog worshipLog) async {
    try {
      final userWorshipLogModel = UserWorshipLogModel.fromEntity(worshipLog);
      await remoteDataSource.logUserWorship(userWorshipLogModel);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserWorshipLog>>> getUserWorshipLogs(String userId, DateTime date) async {
    try {
      final userWorshipLogModels = await remoteDataSource.getUserWorshipLogs(userId, date);
      return Right(userWorshipLogModels.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
