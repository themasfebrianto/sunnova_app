import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class DailyActivityRemoteDataSource {
  /// Retrieves a list of all daily worship activities.
  /// Throws [ServerException] for all error codes.
  Future<List<DailyWorshipModel>> getDailyWorships();

  /// Logs a user's worship activity.
  /// Throws [ServerException] for all error codes.
  Future<void> logUserWorship(UserWorshipLogModel worshipLog);

  /// Retrieves a list of user worship logs for a specific user and date.
  /// Throws [ServerException] for all error codes.
  Future<List<UserWorshipLogModel>> getUserWorshipLogs(String userId, DateTime date);
}
