import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetUserLessonProgress {
  final GamificationRepository repository;

  GetUserLessonProgress(this.repository);

  Future<Either<Failure, List<UserLessonProgress>>> call(String userId) async {
    return await repository.getUserLessonProgress(userId);
  }
}

class GetUserLessonProgressParams extends Equatable {
  final String userId;

  const GetUserLessonProgressParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}
