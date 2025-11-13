import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetUserGameStats {
  final GamificationRepository repository;

  GetUserGameStats(this.repository);

  Future<Either<Failure, UserGameStats>> call(String userId) async {
    return await repository.getUserGameStats(userId);
  }
}

class GetUserGameStatsParams extends Equatable {
  final String userId;

  const GetUserGameStatsParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}
