import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source.dart';
import 'package:sunnova_app/data/models/user_profile_model.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final DatabaseHelper databaseHelper;

  AuthLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheUserProfile(UserProfileModel userProfile) async {
    await databaseHelper.cacheUserProfile(userProfile);
  }

  @override
  Future<void> clearUserProfile() async {
    await databaseHelper.clearUserProfile();
  }

  @override
  Future<UserProfileModel> getLastUserProfile() async {
    final userProfile = await databaseHelper.getUserProfile();
    if (userProfile != null) {
      return userProfile;
    } else {
      throw const CacheException(message: 'No cached user profile found');
    }
  }
}
