import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';
import 'package:sunnova_app/data/repositories/auth_repository_impl.dart';
import 'package:sunnova_app/domain/entities/user_profile.dart';

import 'auth_repository_impl_test.mocks.dart'; // Generated mock file

@GenerateMocks([AuthRemoteDataSource, AuthLocalDataSource])
void main() {
  late AuthRepositoryImpl repository;
  late MockAuthRemoteDataSource mockRemoteDataSource;
  late MockAuthLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    mockLocalDataSource = MockAuthLocalDataSource();
    repository = AuthRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  final tEmail = 'test@example.com';
  final tPassword = 'password123';
  final tUserProfileModel = UserProfileModel(
    uid: 'test_uid_123',
    email: tEmail,
    displayName: 'Test User',
    createdAt: DateTime.now(),
    isPremium: false,
  );
  final tUserProfile = tUserProfileModel.toEntity();

  group('login', () {
    test(
      'should return UserProfile when the call to remote data source is successful and cache locally',
      () async {
        // arrange
        when(mockRemoteDataSource.login(any, any))
            .thenAnswer((_) async => tUserProfileModel);
        when(mockLocalDataSource.cacheUserProfile(any))
            .thenAnswer((_) async => Future.value());

        // act
        final result = await repository.login(tEmail, tPassword);

        // assert
        verify(mockRemoteDataSource.login(tEmail, tPassword));
        verify(mockLocalDataSource.cacheUserProfile(tUserProfileModel));
        expect(result, Right(tUserProfile));
      },
    );

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        // arrange
        when(mockRemoteDataSource.login(any, any))
            .thenThrow(const ServerException(message: 'Invalid credentials'));

        // act
        final result = await repository.login(tEmail, tPassword);

        // assert
        verify(mockRemoteDataSource.login(tEmail, tPassword));
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Invalid credentials')));
      },
    );
  });

  group('logout', () {
    test(
      'should complete successfully when the call to remote data source is successful and clear local cache',
      () async {
        // arrange
        when(mockRemoteDataSource.logout())
            .thenAnswer((_) async => Future.value());
        when(mockLocalDataSource.clearUserProfile())
            .thenAnswer((_) async => Future.value());

        // act
        final result = await repository.logout();

        // assert
        verify(mockRemoteDataSource.logout());
        verify(mockLocalDataSource.clearUserProfile());
        expect(result, const Right(null));
      },
    );

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        // arrange
        when(mockRemoteDataSource.logout())
            .thenThrow(const ServerException(message: 'Logout failed'));

        // act
        final result = await repository.logout();

        // assert
        verify(mockRemoteDataSource.logout());
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Logout failed')));
      },
    );
  });

  group('getCurrentUser', () {
    test(
      'should return UserProfile from local data source if available',
      () async {
        // arrange
        when(mockLocalDataSource.getLastUserProfile())
            .thenAnswer((_) async => tUserProfileModel);

        // act
        final result = await repository.getCurrentUser();

        // assert
        verify(mockLocalDataSource.getLastUserProfile());
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, Right(tUserProfile));
      },
    );

    test(
      'should return UserProfile from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(mockLocalDataSource.getLastUserProfile())
            .thenThrow(const CacheException(message: 'No cached user'));
        when(mockRemoteDataSource.getCurrentUser())
            .thenAnswer((_) async => tUserProfileModel);
        when(mockLocalDataSource.cacheUserProfile(any))
            .thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getCurrentUser();

        // assert
        verify(mockLocalDataSource.getLastUserProfile());
        verify(mockRemoteDataSource.getCurrentUser());
        verify(mockLocalDataSource.cacheUserProfile(tUserProfileModel));
        expect(result, Right(tUserProfile));
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(mockLocalDataSource.getLastUserProfile())
            .thenThrow(const CacheException(message: 'No cached user'));
        when(mockRemoteDataSource.getCurrentUser())
            .thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getCurrentUser();

        // assert
        verify(mockLocalDataSource.getLastUserProfile());
        verify(mockRemoteDataSource.getCurrentUser());
        verifyNoMoreInteractions(mockLocalDataSource); // No caching if remote fails
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });
}
