import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_local_data_source.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';
import 'package:sunnova_app/domain/entities/daily_worship.dart';
import 'package:sunnova_app/domain/entities/user_worship_log.dart';
import 'package:sunnova_app/domain/repositories/daily_activity_repository.dart';

class DailyActivityRepositoryImpl implements DailyActivityRepository {
  final DailyActivityRemoteDataSource remoteDataSource;
  final DailyActivityLocalDataSource localDataSource;

  DailyActivityRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<DailyWorship>>> getDailyWorships() async {
    try {
      // ambil dari local dulu
      final localData = await localDataSource.getLastDailyWorshipActivities();
      return Right(localData.map((e) => e.toEntity()).toList());
    } on CacheException {
      // fallback ke remote jika local gagal
      try {
        final remoteData = await remoteDataSource.getDailyWorships();
        await localDataSource.cacheDailyWorshipActivities(remoteData);
        return Right(remoteData.map((e) => e.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    }
  }

  @override
  Future<Either<Failure, void>> logUserWorship(
    UserWorshipLog worshipLog,
  ) async {
    try {
      final model = UserWorshipLogModel.fromEntity(worshipLog);
      await remoteDataSource.logUserWorship(model);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserWorshipLog>>> getUserWorshipLogs(
    String userId,
    DateTime date,
  ) async {
    try {
      // ambil dari local dulu
      final localData = await localDataSource.getLastUserWorshipLogs(
        userId,
        date,
      );
      return Right(localData.map((e) => e.toEntity()).toList());
    } on CacheException {
      // fallback ke remote jika local gagal
      try {
        final remoteData = await remoteDataSource.getUserWorshipLogs(
          userId,
          date,
        );
        await localDataSource.cacheUserWorshipLogs(remoteData);
        return Right(remoteData.map((e) => e.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    }
  }
}
