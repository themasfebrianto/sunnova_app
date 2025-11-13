import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class GamificationLocalDataSource {
  /// Retrieves cached user game statistics for a given user ID.
  /// Throws [CacheException] if no data is present.
  Future<UserGameStatsModel> getLastUserGameStats(String userId);

  /// Caches the [UserGameStatsModel].
  Future<void> cacheUserGameStats(UserGameStatsModel userGameStats);

  /// Clears cached user game statistics.
  Future<void> clearUserGameStats(String userId);

  /// Retrieves cached user lesson progress for a given user ID.
  /// Throws [CacheException] if no data is present.
  Future<List<UserLessonProgressModel>> getLastUserLessonProgress(String userId);

  /// Caches a list of [UserLessonProgressModel].
  Future<void> cacheUserLessonProgress(List<UserLessonProgressModel> progressList);

  /// Clears cached user lesson progress.
  Future<void> clearUserLessonProgress(String userId);

  /// Retrieves cached badges.
  /// Throws [CacheException] if no data is present.
  Future<List<BadgeModel>> getLastBadges();

  /// Caches a list of [BadgeModel].
  Future<void> cacheBadges(List<BadgeModel> badges);

  /// Clears cached badges.
  Future<void> clearBadges();

  /// Retrieves cached user achievements for a given user ID.
  /// Throws [CacheException] if no data is present.
  Future<List<UserAchievementModel>> getLastUserAchievements(String userId);

  /// Caches a list of [UserAchievementModel].
  Future<void> cacheUserAchievements(List<UserAchievementModel> achievements);

  /// Clears cached user achievements.
  Future<void> clearUserAchievements(String userId);

  /// Retrieves cached leaderboard ranks for a given rank type.
  /// Throws [CacheException] if no data is present.
  Future<List<LeaderboardRankModel>> getLastLeaderboardRanks(String rankType);

  /// Caches a list of [LeaderboardRankModel].
  Future<void> cacheLeaderboardRanks(List<LeaderboardRankModel> ranks);

  /// Clears cached leaderboard ranks.
  Future<void> clearLeaderboardRanks(String rankType);
}
