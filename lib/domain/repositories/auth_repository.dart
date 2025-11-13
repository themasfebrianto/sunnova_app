import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserProfile>> login(String email, String password);
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, UserProfile>> getCurrentUser();
}
