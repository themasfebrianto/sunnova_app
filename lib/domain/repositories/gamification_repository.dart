import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class GamificationRepository {
  Future<Either<Failure, UserGameStats>> getUserGameStats(String userId);
  Future<Either<Failure, List<UserLessonProgress>>> getUserLessonProgress(String userId);
  Future<Either<Failure, List<BadgeEntity>>> getBadges();
  Future<Either<Failure, List<UserAchievement>>> getUserAchievements(String userId);
  Future<Either<Failure, List<LeaderboardRank>>> getLeaderboardRanks(String rankType);
}
