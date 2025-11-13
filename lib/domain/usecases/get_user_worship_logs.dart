import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetUserWorshipLogs {
  final DailyActivityRepository repository;

  GetUserWorshipLogs(this.repository);

  Future<Either<Failure, List<UserWorshipLog>>> call(String userId, DateTime date) async {
    return await repository.getUserWorshipLogs(userId, date);
  }
}

class GetUserWorshipLogsParams extends Equatable {
  final String userId;
  final DateTime date;

  const GetUserWorshipLogsParams({required this.userId, required this.date});

  @override
  List<Object?> get props => [userId, date];
}
