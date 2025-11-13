import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetLeaderboardRanks {
  final GamificationRepository repository;

  GetLeaderboardRanks(this.repository);

  Future<Either<Failure, List<LeaderboardRank>>> call(String rankType) async {
    return await repository.getLeaderboardRanks(rankType);
  }
}

class GetLeaderboardRanksParams extends Equatable {
  final String rankType;

  const GetLeaderboardRanksParams({required this.rankType});

  @override
  List<Object?> get props => [rankType];
}
