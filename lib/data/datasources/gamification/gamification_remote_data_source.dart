import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class GamificationRemoteDataSource {
  /// Retrieves user game statistics for a given user ID.
  /// Throws [ServerException] for all error codes.
  Future<UserGameStatsModel> getUserGameStats(String userId);

  /// Retrieves user lesson progress for a given user ID.
  /// Throws [ServerException] for all error codes.
  Future<List<UserLessonProgressModel>> getUserLessonProgress(String userId);

  /// Retrieves a list of all available badges.
  /// Throws [ServerException] for all error codes.
  Future<List<BadgeModel>> getBadges();

  /// Retrieves user achievements for a given user ID.
  /// Throws [ServerException] for all error codes.
  Future<List<UserAchievementModel>> getUserAchievements(String userId);

  /// Retrieves leaderboard ranks for a given rank type (e.g., WEEKLY, MONTHLY).
  /// Throws [ServerException] for all error codes.
  Future<List<LeaderboardRankModel>> getLeaderboardRanks(String rankType);
}
