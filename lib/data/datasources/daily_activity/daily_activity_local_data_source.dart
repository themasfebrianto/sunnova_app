import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

abstract class DailyActivityLocalDataSource {
  Future<void> cacheDailyWorshipActivities(List<DailyWorshipModel> activities);
  Future<void> cacheUserWorshipLogs(List<UserWorshipLogModel> logs);
  Future<void> clearDailyWorshipActivities();
  Future<void> clearUserWorshipLogs(String userId);
  Future<List<DailyWorshipModel>> getLastDailyWorshipActivities();
  Future<List<UserWorshipLogModel>> getLastUserWorshipLogs(String userId, DateTime date);
}
