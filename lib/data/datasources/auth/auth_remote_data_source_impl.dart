import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  // For now, we'll simulate network calls.
  // In a real app, this would interact with Firebase Auth, a REST API, etc.

  @override
  Future<UserProfileModel> login(String email, String password) async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));

    if (email == 'test@example.com' && password == 'password123') {
      return UserProfileModel(
        uid: 'test_uid_123',
        email: email,
        displayName: 'Test User',
        createdAt: DateTime.now(),
        isPremium: false,
      );
    } else {
      throw ServerException(message: 'Invalid credentials');
    }
  }

  @override
  Future<void> logout() async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));
    // Simulate successful logout
    return Future.value();
  }

  @override
  Future<UserProfileModel> getCurrentUser() async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));

    // Simulate a logged-in user
    return UserProfileModel(
      uid: 'current_user_uid_456',
      email: 'current@example.com',
      displayName: 'Current User',
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      isPremium: true,
    );
    // Or throw ServerException if no user is logged in
    // throw ServerException(message: 'No user logged in');
  }
}
