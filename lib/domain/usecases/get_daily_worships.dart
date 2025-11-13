import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetDailyWorships {
  final DailyActivityRepository repository;

  GetDailyWorships(this.repository);

  Future<Either<Failure, List<DailyWorship>>> call() async {
    return await repository.getDailyWorships();
  }
}
