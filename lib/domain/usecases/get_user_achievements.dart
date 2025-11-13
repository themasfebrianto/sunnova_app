import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetUserAchievements {
  final GamificationRepository repository;

  GetUserAchievements(this.repository);

  Future<Either<Failure, List<UserAchievement>>> call(String userId) async {
    return await repository.getUserAchievements(userId);
  }
}

class GetUserAchievementsParams extends Equatable {
  final String userId;

  const GetUserAchievementsParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}
