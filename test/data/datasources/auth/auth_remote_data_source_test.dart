import 'package:flutter_test/flutter_test.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source_impl.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';

void main() {
  late AuthRemoteDataSourceImpl dataSource;

  setUp(() {
    dataSource = AuthRemoteDataSourceImpl();
  });

  group('login', () {
    const tEmail = 'test@example.com';
    const tPassword = 'password123';

    test(
      'should return UserProfileModel when the login is successful',
      () async {
        // act
        final result = await dataSource.login(tEmail, tPassword);

        // assert
        expect(result, isA<UserProfileModel>());
        expect(result.email, tEmail);
      },
    );

    test(
      'should throw ServerException when login fails with invalid credentials',
      () async {
        // act
        final call = dataSource.login;

        // assert
        expect(
          () => call('wrong@example.com', 'wrongpassword'),
          throwsA(isA<ServerException>()),
        );
      },
    );
  });

  group('logout', () {
    test('should complete successfully when logout is successful', () async {
      // act
      final call = dataSource.logout;

      // assert
      expect(() => call(), returnsNormally);
    });
  });

  group('getCurrentUser', () {
    final tUserProfileModel = UserProfileModel(
      uid: 'current_user_uid_456',
      email: 'current@example.com',
      displayName: 'Current User',
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      isPremium: true,
    );

    test(
      'should return UserProfileModel when a current user is available',
      () async {
        // act
        final result = await dataSource.getCurrentUser();

        // assert
        expect(result, isA<UserProfileModel>());
        expect(result.uid, tUserProfileModel.uid);
      },
    );

    // Add a test case for when no user is logged in (if the mock logic changes)
    // test(
    //   'should throw ServerException when no current user is available',
    //   () async {
    //     // Modify mock to throw exception
    //     // final call = dataSource.getCurrentUser;
    //     // expect(() => call(), throwsA(isA<ServerException>()));
    //   },
    // );
  });
}
