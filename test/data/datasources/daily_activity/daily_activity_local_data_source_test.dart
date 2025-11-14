import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_local_data_source_impl.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

import 'daily_activity_local_data_source_test.mocks.dart';

@GenerateMocks([DatabaseHelper])
void main() {
  late DailyActivityLocalDataSourceImpl dataSource;
  late MockDatabaseHelper mockDatabaseHelper;

  setUp(() {
    mockDatabaseHelper = MockDatabaseHelper();
    dataSource = DailyActivityLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  final tFixedDateTime = DateTime.utc(2023, 1, 1);

  final tDailyWorshipModel = DailyWorshipModel(
    id: 'dw1',
    title: 'Shalat Subuh',
    description: 'Melaksanakan shalat subuh',
    icon: 'icon_subuh',
    category: 'PRAYER',
    gemReward: 5,
    xpReward: 10,
    isRepeatable: false,
    isDefault: true,
    createdAt: tFixedDateTime,
  );
  final tDailyWorshipList = [tDailyWorshipModel];

  final tUserWorshipLogModel = UserWorshipLogModel(
    id: 'uwl1',
    userId: 'user123',
    worshipId: 'dw1',
    date: tFixedDateTime,
    isCompleted: true,
    completedAt: tFixedDateTime,
    currentValue: 1,
  );
  final tUserWorshipLogList = [tUserWorshipLogModel];

  group('Daily Worship Activities', () {
    group('cacheDailyWorshipActivities', () {
      test(
        'should call DatabaseHelper.cacheDailyWorshipActivities to cache the activities',
        () async {
          // arrange
          when(mockDatabaseHelper.cacheDailyWorshipActivities(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.cacheDailyWorshipActivities(tDailyWorshipList);

          // assert
          verify(mockDatabaseHelper.cacheDailyWorshipActivities(tDailyWorshipList));
        },
      );
    });

    group('getLastDailyWorshipActivities', () {
      test(
        'should return List<DailyWorshipModel> when there are cached activities',
        () async {
          // arrange
          when(mockDatabaseHelper.getDailyWorshipActivities())
              .thenAnswer((_) async => tDailyWorshipList);

          // act
          final result = await dataSource.getLastDailyWorshipActivities();

          // assert
          expect(result, tDailyWorshipList);
          verify(mockDatabaseHelper.getDailyWorshipActivities());
        },
      );

      test(
        'should throw CacheException when there are no cached activities',
        () async {
          // arrange
          when(mockDatabaseHelper.getDailyWorshipActivities())
              .thenAnswer((_) async => []);

          // act
          final call = dataSource.getLastDailyWorshipActivities;

          // assert
          expect(() => call(), throwsA(isA<CacheException>()));
          verify(mockDatabaseHelper.getDailyWorshipActivities());
        },
      );
    });

    group('clearDailyWorshipActivities', () {
      test(
        'should call DatabaseHelper.clearDailyWorshipActivities to clear the activities',
        () async {
          // arrange
          when(mockDatabaseHelper.clearDailyWorshipActivities())
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.clearDailyWorshipActivities();

          // assert
          verify(mockDatabaseHelper.clearDailyWorshipActivities());
        },
      );
    });
  });

  group('User Worship Logs', () {
    group('cacheUserWorshipLogs', () {
      test(
        'should call DatabaseHelper.cacheUserWorshipLogs to cache the logs',
        () async {
          // arrange
          when(mockDatabaseHelper.cacheUserWorshipLogs(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.cacheUserWorshipLogs(tUserWorshipLogList);

          // assert
          verify(mockDatabaseHelper.cacheUserWorshipLogs(tUserWorshipLogList));
        },
      );
    });

    group('getLastUserWorshipLogs', () {
      test(
        'should return List<UserWorshipLogModel> when there are cached logs',
        () async {
          // arrange
          when(mockDatabaseHelper.getUserWorshipLogs(any, any))
              .thenAnswer((_) async => tUserWorshipLogList);

          // act
          final result = await dataSource.getLastUserWorshipLogs('user123', tFixedDateTime);

          // assert
          expect(result, tUserWorshipLogList);
          verify(mockDatabaseHelper.getUserWorshipLogs('user123', tFixedDateTime));
        },
      );

      test(
        'should throw CacheException when there are no cached logs',
        () async {
          // arrange
          when(mockDatabaseHelper.getUserWorshipLogs(any, any))
              .thenAnswer((_) async => []);

          // act
          final call = dataSource.getLastUserWorshipLogs;

          // assert
          expect(() => call('user123', tFixedDateTime), throwsA(isA<CacheException>()));
          verify(mockDatabaseHelper.getUserWorshipLogs('user123', tFixedDateTime));
        },
      );
    });

    group('clearUserWorshipLogs', () {
      test(
        'should call DatabaseHelper.clearUserWorshipLogs to clear the logs',
        () async {
          // arrange
          when(mockDatabaseHelper.clearUserWorshipLogs(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.clearUserWorshipLogs('user123');

          // assert
          verify(mockDatabaseHelper.clearUserWorshipLogs('user123'));
        },
      );
    });
  });
}