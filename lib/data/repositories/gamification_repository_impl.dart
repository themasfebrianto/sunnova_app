import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/user_game_stats.dart';
import 'package:sunnova_app/domain/entities/user_lesson_progress.dart';
import 'package:sunnova_app/domain/entities/badge_entity.dart';
import 'package:sunnova_app/domain/entities/user_achievement.dart';
import 'package:sunnova_app/domain/entities/leaderboard_rank.dart';
import 'package:sunnova_app/domain/repositories/gamification_repository.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_local_data_source.dart';

class GamificationRepositoryImpl implements GamificationRepository {
  final GamificationRemoteDataSource remoteDataSource;
  final GamificationLocalDataSource localDataSource;

  GamificationRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserGameStats>> getUserGameStats(String userId) async {
    try {
      final localStats = await localDataSource.getLastUserGameStats(userId);
      return Right(localStats.toEntity());
    } on CacheException catch (_) {
      try {
        final remoteStats = await remoteDataSource.getUserGameStats(userId);
        await localDataSource.cacheUserGameStats(remoteStats);
        return Right(remoteStats.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserLessonProgress>>> getUserLessonProgress(String userId) async {
    try {
      final localProgress = await localDataSource.getLastUserLessonProgress(userId);
      return Right(localProgress.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteProgress = await remoteDataSource.getUserLessonProgress(userId);
        await localDataSource.cacheUserLessonProgress(remoteProgress);
        return Right(remoteProgress.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<BadgeEntity>>> getBadges() async {
    try {
      final localBadges = await localDataSource.getLastBadges();
      return Right(localBadges.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteBadges = await remoteDataSource.getBadges();
        await localDataSource.cacheBadges(remoteBadges);
        return Right(remoteBadges.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserAchievement>>> getUserAchievements(String userId) async {
    try {
      final localAchievements = await localDataSource.getLastUserAchievements(userId);
      return Right(localAchievements.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteAchievements = await remoteDataSource.getUserAchievements(userId);
        await localDataSource.cacheUserAchievements(remoteAchievements);
        return Right(remoteAchievements.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<LeaderboardRank>>> getLeaderboardRanks(String rankType) async {
    try {
      final localRanks = await localDataSource.getLastLeaderboardRanks(rankType);
      return Right(localRanks.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteRanks = await remoteDataSource.getLeaderboardRanks(rankType);
        await localDataSource.cacheLeaderboardRanks(remoteRanks);
        return Right(remoteRanks.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
