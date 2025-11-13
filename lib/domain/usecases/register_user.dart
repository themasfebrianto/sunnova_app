import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class RegisterUser {
  final AuthRepository repository;

  RegisterUser(this.repository);

  Future<Either<Failure, UserProfile>> call(RegisterParams params) async {
    // Assuming register also returns a UserProfile upon success
    return await repository.login(params.email, params.password); // Placeholder, actual register method needed
  }
}

class RegisterParams extends Equatable {
  final String email;
  final String password;
  final String? displayName; // Optional for registration

  const RegisterParams({required this.email, required this.password, this.displayName});

  @override
  List<Object?> get props => [email, password, displayName];
}
