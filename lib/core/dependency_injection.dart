import 'package:get_it/get_it.dart';
import 'package:sunnova_app/domain/repositories/auth_repository.dart';
import 'package:sunnova_app/data/repositories/auth_repository_impl.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source_impl.dart';
import 'package:sunnova_app/domain/repositories/course_repository.dart';
import 'package:sunnova_app/data/repositories/course_repository_impl.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source_impl.dart';

final sl = GetIt.instance; // sl stands for Service Locator

void setupLocator() {
  // Register AuthRepository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  // Register AuthRemoteDataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );

  // Register CourseRepository
  sl.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(remoteDataSource: sl()),
  );

  // Register CourseRemoteDataSource
  sl.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSourceImpl(),
  );
}
