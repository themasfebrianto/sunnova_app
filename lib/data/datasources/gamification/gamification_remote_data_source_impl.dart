import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_remote_data_source.dart';
import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';

class GamificationRemoteDataSourceImpl implements GamificationRemoteDataSource {
  @override
  Future<UserGameStatsModel> getUserGameStats(String userId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (userId == 'test_uid_123') {
      return UserGameStatsModel(
        userId: userId,
        totalXp: 1500,
        level: 15,
        currentStreak: 7,
        longestStreak: 14,
        lastActiveDate: DateTime.now(),
        totalLessonsCompleted: 50,
        totalQuizzesPassed: 30,
        createdAt: DateTime.now().subtract(const Duration(days: 60)),
      );
    }
    throw ServerException(message: 'User game stats not found');
  }

  @override
  Future<List<UserLessonProgressModel>> getUserLessonProgress(String userId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (userId == 'test_uid_123') {
      return [
        UserLessonProgressModel(
          id: 'ulp1',
          userId: userId,
          lessonId: 'cl1',
          isCompleted: true,
          completedAt: DateTime.now().subtract(const Duration(days: 5)),
          attempts: 1,
          quizScore: 95.0,
          createdAt: DateTime.now().subtract(const Duration(days: 5)),
        ),
        UserLessonProgressModel(
          id: 'ulp2',
          userId: userId,
          lessonId: 'cl2',
          isCompleted: false,
          attempts: 2,
          createdAt: DateTime.now().subtract(const Duration(days: 2)),
        ),
      ];
    }
    return [];
  }

  @override
  Future<List<BadgeModel>> getBadges() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      BadgeModel(
        id: 'b1',
        title: 'First Lesson',
        description: 'Complete your first lesson',
        icon: 'icon_badge_1',
        targetValue: 1,
        gemReward: 5,
        createdAt: DateTime.now().subtract(const Duration(days: 100)),
      ),
      BadgeModel(
        id: 'b2',
        title: 'Streak Master',
        description: 'Maintain a 7-day streak',
        icon: 'icon_badge_2',
        targetValue: 7,
        gemReward: 10,
        createdAt: DateTime.now().subtract(const Duration(days: 50)),
      ),
    ];
  }

  @override
  Future<List<UserAchievementModel>> getUserAchievements(String userId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (userId == 'test_uid_123') {
      return [
        UserAchievementModel(
          id: 'ua1',
          userId: userId,
          badgeId: 'b1',
          unlockedAt: DateTime.now().subtract(const Duration(days: 90)),
          isNew: false,
        ),
      ];
    }
    return [];
  }

  @override
  Future<List<LeaderboardRankModel>> getLeaderboardRanks(String rankType) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (rankType == 'WEEKLY') {
      return [
        LeaderboardRankModel(
          rankType: 'WEEKLY',
          userId: 'user_a',
          scoreValue: 1000,
          rank: 1,
          createdAt: DateTime.now(),
        ),
        LeaderboardRankModel(
          rankType: 'WEEKLY',
          userId: 'user_b',
          scoreValue: 800,
          rank: 2,
          createdAt: DateTime.now(),
        ),
      ];
    }
    return [];
  }
}
