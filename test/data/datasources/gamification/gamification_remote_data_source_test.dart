import 'package:flutter_test/flutter_test.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_remote_data_source_impl.dart';

void main() {
  late GamificationRemoteDataSourceImpl dataSource;

  setUp(() {
    dataSource = GamificationRemoteDataSourceImpl();
  });

  group('getUserGameStats', () {
    test(
      'should return UserGameStatsModel when userId is test_uid_123',
      () async {
        final result = await dataSource.getUserGameStats('test_uid_123');

        expect(result.userId, 'test_uid_123');
        expect(result.totalXp, 1500);
        expect(result.level, 15);
        expect(result.currentStreak, 7);
        expect(result.longestStreak, 14);
      },
    );

    test('should throw ServerException when userId not found', () async {
      expect(
        () => dataSource.getUserGameStats('unknown_user'),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getUserLessonProgress', () {
    test('should return list of UserLessonProgressModel', () async {
      final result = await dataSource.getUserLessonProgress('test_uid_123');

      expect(result.length, 2);
      expect(result[0].id, 'ulp1');
      expect(result[1].isCompleted, false);
    });
  });

  group('getBadges', () {
    test('should return list of BadgeModel', () async {
      final badges = await dataSource.getBadges();

      expect(badges.length, 2);
      expect(badges.first.id, 'b1');
    });
  });

  group('getUserAchievements', () {
    test('should return list of UserAchievementModel for test user', () async {
      final achievements = await dataSource.getUserAchievements('test_uid_123');

      expect(achievements.length, 1);
      expect(achievements.first.id, 'ua1');
    });

    test('should return empty list when userId unknown', () async {
      final achievements = await dataSource.getUserAchievements('nope');
      expect(achievements, isEmpty);
    });
  });

  group('getLeaderboardRanks', () {
    test('should return weekly leaderboard ranks', () async {
      final ranks = await dataSource.getLeaderboardRanks('WEEKLY');

      expect(ranks.length, 2);
      expect(ranks.first.rank, 1);
      expect(ranks[1].userId, 'user_b');
    });

    test('should return empty list for unsupported rankType', () async {
      final ranks = await dataSource.getLeaderboardRanks('MONTHLY');
      expect(ranks, isEmpty);
    });
  });
}
