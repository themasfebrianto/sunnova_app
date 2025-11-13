import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

class DailyActivityRemoteDataSourceImpl implements DailyActivityRemoteDataSource {
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
        createdAt: DateTime.now(),
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
        createdAt: DateTime.now(),
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
  Future<List<UserWorshipLogModel>> getUserWorshipLogs(String userId, DateTime date) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    // Simulate returning some dummy data
    if (userId == 'test_user_id' && date.day == DateTime.now().day) {
      return [
        UserWorshipLogModel(
          id: 'uwl1',
          userId: userId,
          worshipId: 'dw1',
          date: date,
          isCompleted: true,
          completedAt: DateTime.now(),
          currentValue: 1,
        ),
      ];
    }
    return [];
  }
}