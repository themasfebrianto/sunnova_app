import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/user_profile.dart';
import 'package:sunnova_app/domain/repositories/auth_repository.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserProfile>> login(
    String email,
    String password,
  ) async {
    try {
      final userProfileModel = await remoteDataSource.login(email, password);
      return Right(userProfileModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await remoteDataSource.logout();
      return const Right(null);
    }
    on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> getCurrentUser() async {
    try {
      final userProfileModel = await remoteDataSource.getCurrentUser();
      return Right(userProfileModel.toEntity());
    }
    on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
