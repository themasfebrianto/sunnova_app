import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class LogUserWorship {
  final DailyActivityRepository repository;

  LogUserWorship(this.repository);

  Future<Either<Failure, void>> call(UserWorshipLog worshipLog) async {
    return await repository.logUserWorship(worshipLog);
  }
}
