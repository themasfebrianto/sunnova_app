import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_local_data_source_impl.dart';
import 'package:sunnova_app/data/models/badge_model.dart';
import 'package:sunnova_app/data/models/user_game_stats_model.dart';
import 'package:sunnova_app/data/models/user_lesson_progress_model.dart';
import 'package:sunnova_app/data/models/user_achievement_model.dart';
import 'package:sunnova_app/data/models/leaderboard_rank_model.dart';

import 'gamification_local_data_source_test.mocks.dart';

@GenerateMocks([DatabaseHelper])
void main() {
  late GamificationLocalDataSourceImpl dataSource;
  late MockDatabaseHelper mockDatabaseHelper;

  setUp(() {
    mockDatabaseHelper = MockDatabaseHelper();
    dataSource = GamificationLocalDataSourceImpl(
      databaseHelper: mockDatabaseHelper,
    );
  });

  group('getLastBadges', () {
    test('should return cached badges when cache is not empty', () async {
      final tBadges = [
        BadgeModel(
          id: 'b1',
          title: 'Test Badge',
          description: 'Desc',
          icon: 'icon',
          targetValue: 1,
          gemReward: 5,
          createdAt: DateTime.now(),
        ),
      ];

      when(mockDatabaseHelper.getBadges()).thenAnswer((_) async => tBadges);

      final result = await dataSource.getLastBadges();

      expect(result, tBadges);
      verify(mockDatabaseHelper.getBadges());
    });

    test('should throw CacheException when badges cache empty', () async {
      when(mockDatabaseHelper.getBadges()).thenAnswer((_) async => []);

      expect(() => dataSource.getLastBadges(), throwsA(isA<CacheException>()));
    });
  });

  group('getLastUserGameStats', () {
    test('should return cached stats when exists', () async {
      final tStats = UserGameStatsModel(
        userId: 'u1',
        totalXp: 100,
        level: 1,
        currentStreak: 2,
        longestStreak: 3,
        lastActiveDate: DateTime.now(),
        totalLessonsCompleted: 10,
        totalQuizzesPassed: 5,
        createdAt: DateTime.now(),
      );

      when(
        mockDatabaseHelper.getUserGameStats('u1'),
      ).thenAnswer((_) async => tStats);

      final result = await dataSource.getLastUserGameStats('u1');

      expect(result, tStats);
      verify(mockDatabaseHelper.getUserGameStats('u1'));
    });

    test('should throw CacheException when null', () async {
      when(
        mockDatabaseHelper.getUserGameStats('u1'),
      ).thenAnswer((_) async => null);

      expect(
        () => dataSource.getLastUserGameStats('u1'),
        throwsA(isA<CacheException>()),
      );
    });
  });

  group('getLastUserLessonProgress', () {
    test('should return cached lessons when exists', () async {
      final tProgress = [
        UserLessonProgressModel(
          id: 'lp1',
          userId: 'u1',
          lessonId: 'l1',
          isCompleted: true,
          attempts: 1,
          createdAt: DateTime.now(),
        ),
      ];

      when(
        mockDatabaseHelper.getUserLessonProgress('u1'),
      ).thenAnswer((_) async => tProgress);

      final result = await dataSource.getLastUserLessonProgress('u1');

      expect(result, tProgress);
      verify(mockDatabaseHelper.getUserLessonProgress('u1'));
    });

    test('should throw CacheException when empty', () async {
      when(
        mockDatabaseHelper.getUserLessonProgress('u1'),
      ).thenAnswer((_) async => []);

      expect(
        () => dataSource.getLastUserLessonProgress('u1'),
        throwsA(isA<CacheException>()),
      );
    });
  });

  group('getLastLeaderboardRanks', () {
    test('should return cached ranks', () async {
      final tRanks = [
        LeaderboardRankModel(
          rankType: 'WEEKLY',
          userId: 'u1',
          scoreValue: 100,
          rank: 1,
          createdAt: DateTime.now(),
        ),
      ];

      when(
        mockDatabaseHelper.getLeaderboardRanks('WEEKLY'),
      ).thenAnswer((_) async => tRanks);

      final result = await dataSource.getLastLeaderboardRanks('WEEKLY');

      expect(result, tRanks);
      verify(mockDatabaseHelper.getLeaderboardRanks('WEEKLY'));
    });

    test('should throw CacheException when empty', () async {
      when(
        mockDatabaseHelper.getLeaderboardRanks('WEEKLY'),
      ).thenAnswer((_) async => []);

      expect(
        () => dataSource.getLastLeaderboardRanks('WEEKLY'),
        throwsA(isA<CacheException>()),
      );
    });
  });

  group('getLastUserAchievements', () {
    test('should return cached achievements', () async {
      final tAchievements = [
        UserAchievementModel(
          id: 'a1',
          userId: 'u1',
          badgeId: 'b1',
          unlockedAt: DateTime.now(),
          isNew: false,
        ),
      ];

      when(
        mockDatabaseHelper.getUserAchievements('u1'),
      ).thenAnswer((_) async => tAchievements);

      final result = await dataSource.getLastUserAchievements('u1');

      expect(result, tAchievements);
      verify(mockDatabaseHelper.getUserAchievements('u1'));
    });

    test('should throw CacheException when empty', () async {
      when(
        mockDatabaseHelper.getUserAchievements('u1'),
      ).thenAnswer((_) async => []);

      expect(
        () => dataSource.getLastUserAchievements('u1'),
        throwsA(isA<CacheException>()),
      );
    });
  });
}
