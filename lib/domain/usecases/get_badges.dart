import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetBadges {
  final GamificationRepository repository;

  GetBadges(this.repository);

  Future<Either<Failure, List<BadgeEntity>>> call() async {
    return await repository.getBadges();
  }
}
