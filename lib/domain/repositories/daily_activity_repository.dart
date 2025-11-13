import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class DailyActivityRepository {
  Future<Either<Failure, List<DailyWorship>>> getDailyWorships();
  Future<Either<Failure, void>> logUserWorship(UserWorshipLog worshipLog);
  Future<Either<Failure, List<UserWorshipLog>>> getUserWorshipLogs(String userId, DateTime date);
}
