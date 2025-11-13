import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/user_profile.dart';
import 'package:sunnova_app/domain/repositories/auth_repository.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source.dart'; // New import

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource; // New dependency

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource, // Initialize new dependency
  });

  @override
  Future<Either<Failure, UserProfile>> login(
    String email,
    String password,
  ) async {
    try {
      final userProfileModel = await remoteDataSource.login(email, password);
      await localDataSource.cacheUserProfile(userProfileModel); // Cache on successful login
      return Right(userProfileModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await remoteDataSource.logout();
      await localDataSource.clearUserProfile(); // Clear cache on successful logout
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, UserProfile>> getCurrentUser() async {
    try {
      // Try to get from local cache first (offline-first)
      final localUserProfile = await localDataSource.getLastUserProfile();
      return Right(localUserProfile.toEntity());
    } on CacheException catch (_) {
      // If not in cache, try remote
      try {
        final remoteUserProfile = await remoteDataSource.getCurrentUser();
        await localDataSource.cacheUserProfile(remoteUserProfile); // Cache remote data
        return Right(remoteUserProfile.toEntity());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      // This catch is for the initial remote call if local fails and remote also fails
      return Left(ServerFailure(e.message));
    }
  }
}
