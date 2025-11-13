import 'package:sunnova_app/data/models/user_profile_model.dart';

abstract class AuthRemoteDataSource {
  /// Performs user login with email and password.
  /// Throws [ServerException] for all error codes.
  Future<UserProfileModel> login(String email, String password);

  /// Performs user logout.
  /// Throws [ServerException] for all error codes.
  Future<void> logout();

  /// Retrieves the current authenticated user.
  /// Throws [ServerException] for all error codes.
  Future<UserProfileModel> getCurrentUser();
}
