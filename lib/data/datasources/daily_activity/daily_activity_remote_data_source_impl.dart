import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

class DailyActivityRemoteDataSourceImpl
    implements DailyActivityRemoteDataSource {
  final DateTime _fixedDateTime = DateTime.utc(2023, 1, 1);

  @override
  Future<List<DailyWorshipModel>> getDailyWorships() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      DailyWorshipModel(
        id: 'dw1',
        title: 'Shalat Subuh',
        description: 'Melaksanakan shalat fardhu Subuh',
        icon: 'icon_subuh',
        category: 'PRAYER',
        gemReward: 5,
        xpReward: 10,
        isRepeatable: false,
        isDefault: true,
        createdAt: _fixedDateTime,
      ),
      DailyWorshipModel(
        id: 'dw2',
        title: 'Baca Qur\'an (1 Juz)',
        description: 'Membaca Al-Qur\'an sebanyak 1 juz',
        icon: 'icon_quran',
        category: 'QURAN',
        gemReward: 10,
        xpReward: 20,
        isRepeatable: true,
        isDefault: true,
        createdAt: _fixedDateTime,
      ),
    ];
  }

  @override
  Future<void> logUserWorship(UserWorshipLogModel worshipLog) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    // Simulate successful logging
    // print('Logged worship: ${worshipLog.worshipId} for user ${worshipLog.userId}'); // Removed print
    return Future.value();
  }

  @override
  Future<List<UserWorshipLogModel>> getUserWorshipLogs(
    String userId,
    DateTime date,
  ) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (userId == 'test_user_id' && date == _fixedDateTime) {
      return [
        UserWorshipLogModel(
          id: 'uwl1',
          userId: userId,
          worshipId: 'dw1',
          date: date,
          isCompleted: true,
          completedAt: _fixedDateTime,
          currentValue: 1,
        ),
      ];
    } else {
      throw ServerException(message: 'Invalid userId or date');
    }
  }
}
