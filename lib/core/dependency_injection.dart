import 'package:get_it/get_it.dart';
import 'package:sunnova_app/domain/repositories/auth_repository.dart';
import 'package:sunnova_app/data/repositories/auth_repository_impl.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/auth/auth_remote_data_source_impl.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source.dart';
import 'package:sunnova_app/data/datasources/auth/auth_local_data_source_impl.dart';
import 'package:sunnova_app/domain/repositories/course_repository.dart';
import 'package:sunnova_app/data/repositories/course_repository_impl.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source_impl.dart';
import 'package:sunnova_app/data/datasources/course/course_local_data_source.dart'; // New import
import 'package:sunnova_app/data/datasources/course/course_local_data_source_impl.dart'; // New import
import 'package:sunnova_app/domain/repositories/daily_activity_repository.dart';
import 'package:sunnova_app/data/repositories/daily_activity_repository_impl.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/daily_activity/daily_activity_remote_data_source_impl.dart';
import 'package:sunnova_app/domain/repositories/gamification_repository.dart';
import 'package:sunnova_app/data/repositories/gamification_repository_impl.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_remote_data_source_impl.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_local_data_source.dart';
import 'package:sunnova_app/data/datasources/gamification/gamification_local_data_source_impl.dart';
import 'package:sunnova_app/domain/repositories/assessment_repository.dart';
import 'package:sunnova_app/data/repositories/assessment_repository_impl.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_remote_data_source_impl.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_local_data_source.dart';
import 'package:sunnova_app/data/datasources/assessment/assessment_local_data_source_impl.dart';
import 'package:sunnova_app/domain/repositories/shop_repository.dart';
import 'package:sunnova_app/data/repositories/shop_repository_impl.dart';
import 'package:sunnova_app/data/datasources/shop/shop_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/shop/shop_remote_data_source_impl.dart';
import 'package:sunnova_app/data/datasources/shop/shop_local_data_source.dart';
import 'package:sunnova_app/data/datasources/shop/shop_local_data_source_impl.dart';
import 'package:sunnova_app/core/services/database_helper.dart';

final sl = GetIt.instance; // sl stands for Service Locator

Future<void> setupLocator() async {
  // Register DatabaseHelper
  sl.registerSingletonAsync<DatabaseHelper>(() async {
    final dbHelper = DatabaseHelper();
    await dbHelper.database;
    return dbHelper;
  });
  await sl.isReady<DatabaseHelper>();

  // Register AuthRepository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // Register AuthRemoteDataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );

  // Register AuthLocalDataSource
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(databaseHelper: sl()),
  );

  // Register CourseRepository
  sl.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()), // Updated
  );

  // Register CourseRemoteDataSource
  sl.registerLazySingleton<CourseRemoteDataSource>(
    () => CourseRemoteDataSourceImpl(),
  );

  // Register CourseLocalDataSource
  sl.registerLazySingleton<CourseLocalDataSource>( // New
    () => CourseLocalDataSourceImpl(databaseHelper: sl()),
  );

  // Register DailyActivityRepository
  sl.registerLazySingleton<DailyActivityRepository>(
    () => DailyActivityRepositoryImpl(remoteDataSource: sl()),
  );

  // Register DailyActivityRemoteDataSource
  sl.registerLazySingleton<DailyActivityRemoteDataSource>(
    () => DailyActivityRemoteDataSourceImpl(),
  );

  // Register GamificationRepository
  sl.registerLazySingleton<GamificationRepository>(
    () => GamificationRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // Register GamificationRemoteDataSource
  sl.registerLazySingleton<GamificationRemoteDataSource>(
    () => GamificationRemoteDataSourceImpl(),
  );

  // Register GamificationLocalDataSource
  sl.registerLazySingleton<GamificationLocalDataSource>(
    () => GamificationLocalDataSourceImpl(databaseHelper: sl()),
  );

  // Register AssessmentRepository
  sl.registerLazySingleton<AssessmentRepository>(
    () => AssessmentRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // Register AssessmentRemoteDataSource
  sl.registerLazySingleton<AssessmentRemoteDataSource>(
    () => AssessmentRemoteDataSourceImpl(),
  );

  // Register AssessmentLocalDataSource
  sl.registerLazySingleton<AssessmentLocalDataSource>(
    () => AssessmentLocalDataSourceImpl(databaseHelper: sl()),
  );

  // Register ShopRepository
  sl.registerLazySingleton<ShopRepository>(
    () => ShopRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // Register ShopRemoteDataSource
  sl.registerLazySingleton<ShopRemoteDataSource>(
    () => ShopRemoteDataSourceImpl(),
  );

  // Register ShopLocalDataSource
  sl.registerLazySingleton<ShopLocalDataSource>(
    () => ShopLocalDataSourceImpl(databaseHelper: sl()),
  );
}
