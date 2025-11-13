import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_local_data_source.dart';
import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';

class GamificationLocalDataSourceImpl implements GamificationLocalDataSource {
  final DatabaseHelper databaseHelper;

  GamificationLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheBadges(List<BadgeModel> badges) async {
    await databaseHelper.cacheBadges(badges);
  }

  @override
  Future<void> cacheLeaderboardRanks(List<LeaderboardRankModel> ranks) async {
    await databaseHelper.cacheLeaderboardRanks(ranks);
  }

  @override
  Future<void> cacheUserAchievements(List<UserAchievementModel> achievements) async {
    await databaseHelper.cacheUserAchievements(achievements);
  }

  @override
  Future<void> cacheUserGameStats(UserGameStatsModel userGameStats) async {
    await databaseHelper.cacheUserGameStats(userGameStats);
  }

  @override
  Future<void> cacheUserLessonProgress(List<UserLessonProgressModel> progressList) async {
    await databaseHelper.cacheUserLessonProgress(progressList);
  }

  @override
  Future<void> clearBadges() async {
    await databaseHelper.clearBadges();
  }

  @override
  Future<void> clearLeaderboardRanks(String rankType) async {
    await databaseHelper.clearLeaderboardRanks(rankType);
  }

  @override
  Future<void> clearUserAchievements(String userId) async {
    await databaseHelper.clearUserAchievements(userId);
  }

  @override
  Future<void> clearUserGameStats(String userId) async {
    await databaseHelper.clearUserGameStats(userId);
  }

  @override
  Future<void> clearUserLessonProgress(String userId) async {
    await databaseHelper.clearUserLessonProgress(userId);
  }

  @override
  Future<List<BadgeModel>> getLastBadges() async {
    final badges = await databaseHelper.getBadges();
    if (badges.isNotEmpty) {
      return badges;
    } else {
      throw const CacheException(message: 'No cached badges found');
    }
  }

  @override
  Future<List<LeaderboardRankModel>> getLastLeaderboardRanks(String rankType) async {
    final ranks = await databaseHelper.getLeaderboardRanks(rankType);
    if (ranks.isNotEmpty) {
      return ranks;
    } else {
      throw const CacheException(message: 'No cached leaderboard ranks found');
    }
  }

  @override
  Future<List<UserAchievementModel>> getLastUserAchievements(String userId) async {
    final achievements = await databaseHelper.getUserAchievements(userId);
    if (achievements.isNotEmpty) {
      return achievements;
    } else {
      throw const CacheException(message: 'No cached user achievements found');
    }
  }

  @override
  Future<UserGameStatsModel> getLastUserGameStats(String userId) async {
    final stats = await databaseHelper.getUserGameStats(userId);
    if (stats != null) {
      return stats;
    } else {
      throw const CacheException(message: 'No cached user game stats found');
    }
  }

  @override
  Future<List<UserLessonProgressModel>> getLastUserLessonProgress(String userId) async {
    final progress = await databaseHelper.getUserLessonProgress(userId);
    if (progress.isNotEmpty) {
      return progress;
    } else {
      throw const CacheException(message: 'No cached user lesson progress found');
    }
  }
}
