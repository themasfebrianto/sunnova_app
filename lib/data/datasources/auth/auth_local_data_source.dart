import 'package:sunnova_app/data/models/user_profile_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class AuthLocalDataSource {
  /// Retrieves the last cached [UserProfileModel].
  /// Throws [CacheException] if no data is present.
  Future<UserProfileModel> getLastUserProfile();

  /// Caches the [UserProfileModel].
  Future<void> cacheUserProfile(UserProfileModel userProfile);

  /// Clears the cached [UserProfileModel].
  Future<void> clearUserProfile();
}
