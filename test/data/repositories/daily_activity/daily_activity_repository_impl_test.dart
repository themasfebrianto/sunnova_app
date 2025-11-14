import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_local_data_source.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';
import 'package:sunnova_app/data/repositories/daily_activity_repository_impl.dart';
import 'package:sunnova_app/domain/entities/daily_worship.dart';
import 'package:sunnova_app/domain/entities/user_worship_log.dart';

import 'daily_activity_repository_impl_test.mocks.dart';

@GenerateMocks([DailyActivityRemoteDataSource, DailyActivityLocalDataSource])
void main() {
  late DailyActivityRepositoryImpl repository;
  late MockDailyActivityRemoteDataSource mockRemoteDataSource;
  late MockDailyActivityLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockDailyActivityRemoteDataSource();
    mockLocalDataSource = MockDailyActivityLocalDataSource();
    repository = DailyActivityRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
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
  final List<DailyWorship> tDailyWorshipEntityList = tDailyWorshipList
      .map((model) => model.toEntity())
      .toList();

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
  final List<UserWorshipLog> tUserWorshipLogEntityList = tUserWorshipLogList
      .map((model) => model.toEntity())
      .toList();

  group('getDailyWorships', () {
    test(
      'should return daily worship activities from local data source if available',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastDailyWorshipActivities(),
        ).thenAnswer((_) async => tDailyWorshipList);

        // act
        final result = await repository.getDailyWorships();

        // assert
        verify(mockLocalDataSource.getLastDailyWorshipActivities());
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, isA<Right<Failure, List<DailyWorship>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tDailyWorshipEntityList.length);
            expect(list.first.id, tDailyWorshipEntityList.first.id);
            expect(list.first.title, tDailyWorshipEntityList.first.title);
            expect(
              list.first.description,
              tDailyWorshipEntityList.first.description,
            );
            expect(list.first.icon, tDailyWorshipEntityList.first.icon);
            expect(list.first.category, tDailyWorshipEntityList.first.category);
            expect(
              list.first.gemReward,
              tDailyWorshipEntityList.first.gemReward,
            );
            expect(list.first.xpReward, tDailyWorshipEntityList.first.xpReward);
            expect(
              list.first.isRepeatable,
              tDailyWorshipEntityList.first.isRepeatable,
            );
            expect(
              list.first.isDefault,
              tDailyWorshipEntityList.first.isDefault,
            );
            expect(
              list.first.createdAt?.toIso8601String(),
              tDailyWorshipEntityList.first.createdAt.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return daily worship activities from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastDailyWorshipActivities(),
        ).thenThrow(const CacheException(message: 'No cached activities'));
        when(
          mockRemoteDataSource.getDailyWorships(),
        ).thenAnswer((_) async => tDailyWorshipList);
        when(
          mockLocalDataSource.cacheDailyWorshipActivities(any),
        ).thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getDailyWorships();

        // assert
        verify(mockLocalDataSource.getLastDailyWorshipActivities());
        verify(mockRemoteDataSource.getDailyWorships());
        verify(
          mockLocalDataSource.cacheDailyWorshipActivities(tDailyWorshipList),
        );
        expect(result, isA<Right<Failure, List<DailyWorship>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tDailyWorshipEntityList.length);
            expect(list.first.id, tDailyWorshipEntityList.first.id);
            expect(list.first.title, tDailyWorshipEntityList.first.title);
            expect(
              list.first.description,
              tDailyWorshipEntityList.first.description,
            );
            expect(list.first.icon, tDailyWorshipEntityList.first.icon);
            expect(list.first.category, tDailyWorshipEntityList.first.category);
            expect(
              list.first.gemReward,
              tDailyWorshipEntityList.first.gemReward,
            );
            expect(list.first.xpReward, tDailyWorshipEntityList.first.xpReward);
            expect(
              list.first.isRepeatable,
              tDailyWorshipEntityList.first.isRepeatable,
            );
            expect(
              list.first.isDefault,
              tDailyWorshipEntityList.first.isDefault,
            );
            expect(
              list.first.createdAt?.toIso8601String(),
              tDailyWorshipEntityList.first.createdAt.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastDailyWorshipActivities(),
        ).thenThrow(const CacheException(message: 'No cached activities'));
        when(
          mockRemoteDataSource.getDailyWorships(),
        ).thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getDailyWorships();

        // assert
        verify(mockLocalDataSource.getLastDailyWorshipActivities());
        verify(mockRemoteDataSource.getDailyWorships());
        verifyNoMoreInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });

  group('getUserWorshipLogs', () {
    const tUserId = 'user123';
    final tDate = tFixedDateTime;

    test(
      'should return user worship logs from local data source if available',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate),
        ).thenAnswer((_) async => tUserWorshipLogList);

        // act
        final result = await repository.getUserWorshipLogs(tUserId, tDate);

        // assert
        verify(mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate));
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, isA<Right<Failure, List<UserWorshipLog>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tUserWorshipLogEntityList.length);
            expect(list.first.id, tUserWorshipLogEntityList.first.id);
            expect(list.first.userId, tUserWorshipLogEntityList.first.userId);
            expect(
              list.first.worshipId,
              tUserWorshipLogEntityList.first.worshipId,
            );
            expect(
              list.first.date.toIso8601String(),
              tUserWorshipLogEntityList.first.date.toIso8601String(),
            );
            expect(
              list.first.isCompleted,
              tUserWorshipLogEntityList.first.isCompleted,
            );
            expect(
              list.first.completedAt?.toIso8601String(),
              tUserWorshipLogEntityList.first.completedAt?.toIso8601String(),
            );
            expect(
              list.first.currentValue,
              tUserWorshipLogEntityList.first.currentValue,
            );
          },
        );
      },
    );

    test(
      'should return user worship logs from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate),
        ).thenThrow(const CacheException(message: 'No cached logs'));
        when(
          mockRemoteDataSource.getUserWorshipLogs(tUserId, tDate),
        ).thenAnswer((_) async => tUserWorshipLogList);
        when(
          mockLocalDataSource.cacheUserWorshipLogs(any),
        ).thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getUserWorshipLogs(tUserId, tDate);

        // assert
        verify(mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate));
        verify(mockRemoteDataSource.getUserWorshipLogs(tUserId, tDate));
        verify(mockLocalDataSource.cacheUserWorshipLogs(tUserWorshipLogList));
        expect(result, isA<Right<Failure, List<UserWorshipLog>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tUserWorshipLogEntityList.length);
            expect(list.first.id, tUserWorshipLogEntityList.first.id);
            expect(list.first.userId, tUserWorshipLogEntityList.first.userId);
            expect(
              list.first.worshipId,
              tUserWorshipLogEntityList.first.worshipId,
            );
            expect(
              list.first.date.toIso8601String(),
              tUserWorshipLogEntityList.first.date.toIso8601String(),
            );
            expect(
              list.first.isCompleted,
              tUserWorshipLogEntityList.first.isCompleted,
            );
            expect(
              list.first.completedAt?.toIso8601String(),
              tUserWorshipLogEntityList.first.completedAt?.toIso8601String(),
            );
            expect(
              list.first.currentValue,
              tUserWorshipLogEntityList.first.currentValue,
            );
          },
        );
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate),
        ).thenThrow(const CacheException(message: 'No cached logs'));
        when(
          mockRemoteDataSource.getUserWorshipLogs(tUserId, tDate),
        ).thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getUserWorshipLogs(tUserId, tDate);

        // assert
        verify(mockLocalDataSource.getLastUserWorshipLogs(tUserId, tDate));
        verify(mockRemoteDataSource.getUserWorshipLogs(tUserId, tDate));
        verifyNoMoreInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });
}
