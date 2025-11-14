import 'package:flutter_test/flutter_test.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source_impl.dart';
import 'package:sunnova_app/data/models/daily_worship_model.dart';
import 'package:sunnova_app/data/models/user_worship_log_model.dart';

void main() {
  late DailyActivityRemoteDataSourceImpl dataSource;

  setUp(() {
    dataSource = DailyActivityRemoteDataSourceImpl();
  });

  final tFixedDateTime = DateTime.utc(2023, 1, 1);

  group('getDailyWorships', () {
    final tDailyWorshipModel = DailyWorshipModel(
      id: 'dw1',
      title: 'Shalat Subuh',
      description: 'Melaksanakan shalat fardhu Subuh',
      icon: 'icon_subuh',
      category: 'PRAYER',
      gemReward: 5,
      xpReward: 10,
      isRepeatable: false,
      isDefault: true,
      createdAt: tFixedDateTime,
    );

    test(
      'should return a list of DailyWorshipModel when the call is successful',
      () async {
        // act
        final result = await dataSource.getDailyWorships();

        // assert
        expect(result, isA<List<DailyWorshipModel>>());
        expect(result.first.id, tDailyWorshipModel.id);
        expect(result.first.title, tDailyWorshipModel.title);
        expect(result.first.description, tDailyWorshipModel.description);
        expect(result.first.icon, tDailyWorshipModel.icon);
        expect(result.first.category, tDailyWorshipModel.category);
        expect(result.first.gemReward, tDailyWorshipModel.gemReward);
        expect(result.first.xpReward, tDailyWorshipModel.xpReward);
        expect(result.first.isRepeatable, tDailyWorshipModel.isRepeatable);
        expect(result.first.isDefault, tDailyWorshipModel.isDefault);
        expect(
          result.first.createdAt.toIso8601String(),
          tDailyWorshipModel.createdAt.toIso8601String(),
        );
      },
    );

    test(
      'should not throw ServerException when the call is successful',
      () async {
        // act & assert
        await expectLater(dataSource.getDailyWorships(), completes);
      },
    );
  });

  group('getUserWorshipLogs', () {
    const tUserId = 'test_user_id';
    final tUserWorshipLogModel = UserWorshipLogModel(
      id: 'uwl1',
      userId: tUserId,
      worshipId: 'dw1',
      date: tFixedDateTime,
      isCompleted: true,
      completedAt: tFixedDateTime,
      currentValue: 1,
    );

    test(
      'should return a list of UserWorshipLogModel when the call is successful',
      () async {
        // act
        final result = await dataSource.getUserWorshipLogs(
          tUserId,
          tFixedDateTime,
        );

        // assert
        expect(result, isA<List<UserWorshipLogModel>>());
        expect(result.first.id, tUserWorshipLogModel.id);
        expect(result.first.userId, tUserWorshipLogModel.userId);
        expect(result.first.worshipId, tUserWorshipLogModel.worshipId);
        expect(
          result.first.date.toIso8601String(),
          tUserWorshipLogModel.date.toIso8601String(),
        );
        expect(result.first.isCompleted, tUserWorshipLogModel.isCompleted);
        expect(
          result.first.completedAt?.toIso8601String(),
          tUserWorshipLogModel.completedAt?.toIso8601String(),
        );
        expect(result.first.currentValue, tUserWorshipLogModel.currentValue);
      },
    );

    test(
      'should throw ServerException when the call is unsuccessful with invalid userId or date',
      () async {
        // assert
        await expectLater(
          () => dataSource.getUserWorshipLogs('invalidUser', tFixedDateTime),
          throwsA(isA<ServerException>()),
        );

        await expectLater(
          () =>
              dataSource.getUserWorshipLogs(tUserId, DateTime.utc(2024, 1, 1)),
          throwsA(isA<ServerException>()),
        );
      },
    );
  });
}
