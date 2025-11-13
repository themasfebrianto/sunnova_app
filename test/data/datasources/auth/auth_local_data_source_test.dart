import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source_impl.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';

import 'auth_local_data_source_test.mocks.dart'; // Generated mock file

@GenerateMocks([DatabaseHelper])
void main() {
  late AuthLocalDataSourceImpl dataSource;
  late MockDatabaseHelper mockDatabaseHelper;

  setUp(() {
    mockDatabaseHelper = MockDatabaseHelper();
    dataSource = AuthLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  final tUserProfileModel = UserProfileModel(
    uid: 'test_uid_123',
    email: 'test@example.com',
    displayName: 'Test User',
    createdAt: DateTime.now(),
    isPremium: false,
  );

  group('cacheUserProfile', () {
    test(
      'should call DatabaseHelper.cacheUserProfile to cache the user profile',
      () async {
        // arrange
        when(mockDatabaseHelper.cacheUserProfile(any))
            .thenAnswer((_) async => Future.value());

        // act
        await dataSource.cacheUserProfile(tUserProfileModel);

        // assert
        verify(mockDatabaseHelper.cacheUserProfile(tUserProfileModel));
      },
    );
  });

  group('clearUserProfile', () {
    test(
      'should call DatabaseHelper.clearUserProfile to clear the user profile',
      () async {
        // arrange
        when(mockDatabaseHelper.clearUserProfile())
            .thenAnswer((_) async => Future.value());

        // act
        await dataSource.clearUserProfile();

        // assert
        verify(mockDatabaseHelper.clearUserProfile());
      },
    );
  });

  group('getLastUserProfile', () {
    test(
      'should return UserProfileModel when there is a cached user profile',
      () async {
        // arrange
        when(mockDatabaseHelper.getUserProfile())
            .thenAnswer((_) async => tUserProfileModel);

        // act
        final result = await dataSource.getLastUserProfile();

        // assert
        expect(result, tUserProfileModel);
        verify(mockDatabaseHelper.getUserProfile());
      },
    );

    test(
      'should throw CacheException when there is no cached user profile',
      () async {
        // arrange
        when(mockDatabaseHelper.getUserProfile())
            .thenAnswer((_) async => null);

        // act
        final call = dataSource.getLastUserProfile;

        // assert
        expect(() => call(), throwsA(isA<CacheException>()));
        verify(mockDatabaseHelper.getUserProfile());
      },
    );
  });
}
