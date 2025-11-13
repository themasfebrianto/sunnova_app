import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class LogoutUser {
  final AuthRepository repository;

  LogoutUser(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.logout();
  }
}
