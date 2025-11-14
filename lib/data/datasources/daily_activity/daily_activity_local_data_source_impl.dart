import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_local_data_source.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

class DailyActivityLocalDataSourceImpl implements DailyActivityLocalDataSource {
  final DatabaseHelper databaseHelper;

  DailyActivityLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheDailyWorshipActivities(List<DailyWorshipModel> activities) async {
    await databaseHelper.cacheDailyWorshipActivities(activities);
  }

  @override
  Future<void> cacheUserWorshipLogs(List<UserWorshipLogModel> logs) async {
    await databaseHelper.cacheUserWorshipLogs(logs);
  }

  @override
  Future<void> clearDailyWorshipActivities() async {
    await databaseHelper.clearDailyWorshipActivities();
  }

  @override
  Future<void> clearUserWorshipLogs(String userId) async {
    await databaseHelper.clearUserWorshipLogs(userId);
  }

  @override
  Future<List<DailyWorshipModel>> getLastDailyWorshipActivities() async {
    final activities = await databaseHelper.getDailyWorshipActivities();
    if (activities.isNotEmpty) {
      return activities;
    } else {
      throw const CacheException(message: 'No cached daily worship activities found');
    }
  }

  @override
  Future<List<UserWorshipLogModel>> getLastUserWorshipLogs(String userId, DateTime date) async {
    final logs = await databaseHelper.getUserWorshipLogs(userId, date);
    if (logs.isNotEmpty) {
      return logs;
    } else {
      throw const CacheException(message: 'No cached user worship logs found for this user and date');
    }
  }
}
