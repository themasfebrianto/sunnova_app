import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/course/course_local_data_source.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';
import 'package:sunnova_app/data/repositories/course_repository_impl.dart';
import 'package:sunnova_app/domain/entities/course_module.dart';
import 'package:sunnova_app/domain/entities/lesson_unit.dart';
import 'package:sunnova_app/domain/entities/content_lesson.dart';

import 'course_repository_impl_test.mocks.dart'; // Generated mock file

@GenerateMocks([CourseRemoteDataSource, CourseLocalDataSource])
void main() {
  late CourseRepositoryImpl repository;
  late MockCourseRemoteDataSource mockRemoteDataSource;
  late MockCourseLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockCourseRemoteDataSource();
    mockLocalDataSource = MockCourseLocalDataSource();
    repository = CourseRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  final tFixedDateTime = DateTime.utc(
    2023,
    1,
    1,
  ); // Fixed DateTime for consistent testing

  final tCourseModuleModel = CourseModuleModel(
    id: 'cm1',
    title: 'Tajwid Dasar',
    description: 'Pelajari dasar-dasar ilmu tajwid.',
    icon: 'icon_tajwid',
    ordering: 1,
    requiredXpToUnlock: 0,
    isLocked: false,
    createdAt: tFixedDateTime,
    updatedAt: tFixedDateTime,
  );
  final tCourseModuleList = [tCourseModuleModel];
  final List<CourseModule> tCourseModuleEntityList = tCourseModuleList
      .map((model) => model.toEntity())
      .toList();

  final tLessonUnitModel = LessonUnitModel(
    id: 'lu1',
    moduleId: 'cm1',
    title: 'Hukum Nun Sukun',
    description: 'Penjelasan lengkap hukum nun sukun dan tanwin.',
    ordering: 1,
    isLocked: false,
    createdAt: tFixedDateTime,
    updatedAt: tFixedDateTime,
  );
  final tLessonUnitList = [tLessonUnitModel];
  final List<LessonUnit> tLessonUnitEntityList = tLessonUnitList
      .map((model) => model.toEntity())
      .toList();

  final tContentLessonModel = ContentLessonModel(
    id: 'cl1',
    unitId: 'lu1',
    title: 'Idzhar Halqi',
    content: 'Konten pelajaran Idzhar Halqi...',
    ordering: 1,
    requiredTimeInSeconds: 300,
    xpReward: 10,
    createdAt: tFixedDateTime,
    updatedAt: tFixedDateTime,
  );
  final tContentLessonList = [tContentLessonModel];
  final List<ContentLesson> tContentLessonEntityList = tContentLessonList
      .map((model) => model.toEntity())
      .toList();

  group('getCourseModules', () {
    test(
      'should return course modules from local data source if available',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastCourseModules(),
        ).thenAnswer((_) async => tCourseModuleList);

        // act
        final result = await repository.getCourseModules();

        // assert
        verify(mockLocalDataSource.getLastCourseModules());
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, isA<Right<Failure, List<CourseModule>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tCourseModuleEntityList.length);
            expect(list.first.id, tCourseModuleEntityList.first.id);
            expect(list.first.title, tCourseModuleEntityList.first.title);
            expect(
              list.first.description,
              tCourseModuleEntityList.first.description,
            );
            expect(list.first.icon, tCourseModuleEntityList.first.icon);
            expect(list.first.ordering, tCourseModuleEntityList.first.ordering);
            expect(
              list.first.requiredXpToUnlock,
              tCourseModuleEntityList.first.requiredXpToUnlock,
            );
            expect(list.first.isLocked, tCourseModuleEntityList.first.isLocked);
            expect(
              list.first.createdAt.toIso8601String(),
              tCourseModuleEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tCourseModuleEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return course modules from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastCourseModules(),
        ).thenThrow(const CacheException(message: 'No cached modules'));
        when(
          mockRemoteDataSource.getCourseModules(),
        ).thenAnswer((_) async => tCourseModuleList);
        when(
          mockLocalDataSource.cacheCourseModules(any),
        ).thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getCourseModules();

        // assert
        verify(mockLocalDataSource.getLastCourseModules());
        verify(mockRemoteDataSource.getCourseModules());
        verify(mockLocalDataSource.cacheCourseModules(tCourseModuleList));
        expect(result, isA<Right<Failure, List<CourseModule>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tCourseModuleEntityList.length);
            expect(list.first.id, tCourseModuleEntityList.first.id);
            expect(list.first.title, tCourseModuleEntityList.first.title);
            expect(
              list.first.description,
              tCourseModuleEntityList.first.description,
            );
            expect(list.first.icon, tCourseModuleEntityList.first.icon);
            expect(list.first.ordering, tCourseModuleEntityList.first.ordering);
            expect(
              list.first.requiredXpToUnlock,
              tCourseModuleEntityList.first.requiredXpToUnlock,
            );
            expect(list.first.isLocked, tCourseModuleEntityList.first.isLocked);
            expect(
              list.first.createdAt.toIso8601String(),
              tCourseModuleEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tCourseModuleEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastCourseModules(),
        ).thenThrow(const CacheException(message: 'No cached modules'));
        when(
          mockRemoteDataSource.getCourseModules(),
        ).thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getCourseModules();

        // assert
        verify(mockLocalDataSource.getLastCourseModules());
        verify(mockRemoteDataSource.getCourseModules());
        verifyNoMoreInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });

  group('getLessonUnits', () {
    const tModuleId = 'cm1';
    test(
      'should return lesson units from local data source if available',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastLessonUnits(tModuleId),
        ).thenAnswer((_) async => tLessonUnitList);

        // act
        final result = await repository.getLessonUnits(tModuleId);

        // assert
        verify(mockLocalDataSource.getLastLessonUnits(tModuleId));
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, isA<Right<Failure, List<LessonUnit>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tLessonUnitEntityList.length);
            expect(list.first.id, tLessonUnitEntityList.first.id);
            expect(list.first.moduleId, tLessonUnitEntityList.first.moduleId);
            expect(list.first.title, tLessonUnitEntityList.first.title);
            expect(
              list.first.description,
              tLessonUnitEntityList.first.description,
            );
            expect(list.first.ordering, tLessonUnitEntityList.first.ordering);
            expect(
              list.first.requiredLevel,
              tLessonUnitEntityList.first.requiredLevel,
            );
            expect(list.first.isLocked, tLessonUnitEntityList.first.isLocked);
            expect(
              list.first.createdAt.toIso8601String(),
              tLessonUnitEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tLessonUnitEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return lesson units from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastLessonUnits(tModuleId),
        ).thenThrow(const CacheException(message: 'No cached units'));
        when(
          mockRemoteDataSource.getLessonUnits(tModuleId),
        ).thenAnswer((_) async => tLessonUnitList);
        when(
          mockLocalDataSource.cacheLessonUnits(any),
        ).thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getLessonUnits(tModuleId);

        // assert
        verify(mockLocalDataSource.getLastLessonUnits(tModuleId));
        verify(mockRemoteDataSource.getLessonUnits(tModuleId));
        verify(mockLocalDataSource.cacheLessonUnits(tLessonUnitList));
        expect(result, isA<Right<Failure, List<LessonUnit>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tLessonUnitEntityList.length);
            expect(list.first.id, tLessonUnitEntityList.first.id);
            expect(list.first.moduleId, tLessonUnitEntityList.first.moduleId);
            expect(list.first.title, tLessonUnitEntityList.first.title);
            expect(
              list.first.description,
              tLessonUnitEntityList.first.description,
            );
            expect(list.first.ordering, tLessonUnitEntityList.first.ordering);
            expect(
              list.first.requiredLevel,
              tLessonUnitEntityList.first.requiredLevel,
            );
            expect(list.first.isLocked, tLessonUnitEntityList.first.isLocked);
            expect(
              list.first.createdAt.toIso8601String(),
              tLessonUnitEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tLessonUnitEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastLessonUnits(tModuleId),
        ).thenThrow(const CacheException(message: 'No cached units'));
        when(
          mockRemoteDataSource.getLessonUnits(tModuleId),
        ).thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getLessonUnits(tModuleId);

        // assert
        verify(mockLocalDataSource.getLastLessonUnits(tModuleId));
        verify(mockRemoteDataSource.getLessonUnits(tModuleId));
        verifyNoMoreInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });

  group('getContentLessons', () {
    const tUnitId = 'lu1';
    test(
      'should return content lessons from local data source if available',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastContentLessons(tUnitId),
        ).thenAnswer((_) async => tContentLessonList);

        // act
        final result = await repository.getContentLessons(tUnitId);

        // assert
        verify(mockLocalDataSource.getLastContentLessons(tUnitId));
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, isA<Right<Failure, List<ContentLesson>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tContentLessonEntityList.length);
            expect(list.first.id, tContentLessonEntityList.first.id);
            expect(list.first.unitId, tContentLessonEntityList.first.unitId);
            expect(list.first.title, tContentLessonEntityList.first.title);
            expect(list.first.content, tContentLessonEntityList.first.content);
            expect(
              list.first.videoUrl,
              tContentLessonEntityList.first.videoUrl,
            );
            expect(
              list.first.audioUrl,
              tContentLessonEntityList.first.audioUrl,
            );
            expect(
              list.first.ordering,
              tContentLessonEntityList.first.ordering,
            );
            expect(
              list.first.requiredTimeInSeconds,
              tContentLessonEntityList.first.requiredTimeInSeconds,
            );
            expect(
              list.first.xpReward,
              tContentLessonEntityList.first.xpReward,
            );
            expect(
              list.first.createdAt.toIso8601String(),
              tContentLessonEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tContentLessonEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return content lessons from remote data source and cache locally if local is empty',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastContentLessons(tUnitId),
        ).thenThrow(const CacheException(message: 'No cached lessons'));
        when(
          mockRemoteDataSource.getContentLessons(tUnitId),
        ).thenAnswer((_) async => tContentLessonList);
        when(
          mockLocalDataSource.cacheContentLessons(any),
        ).thenAnswer((_) async => Future.value());

        // act
        final result = await repository.getContentLessons(tUnitId);

        // assert
        verify(mockLocalDataSource.getLastContentLessons(tUnitId));
        verify(mockRemoteDataSource.getContentLessons(tUnitId));
        verify(mockLocalDataSource.cacheContentLessons(tContentLessonList));
        expect(result, isA<Right<Failure, List<ContentLesson>>>());
        result.fold(
          (failure) => fail('Expected Right, got Left with $failure'),
          (list) {
            expect(list.length, tContentLessonEntityList.length);
            expect(list.first.id, tContentLessonEntityList.first.id);
            expect(list.first.unitId, tContentLessonEntityList.first.unitId);
            expect(list.first.title, tContentLessonEntityList.first.title);
            expect(list.first.content, tContentLessonEntityList.first.content);
            expect(
              list.first.videoUrl,
              tContentLessonEntityList.first.videoUrl,
            );
            expect(
              list.first.audioUrl,
              tContentLessonEntityList.first.audioUrl,
            );
            expect(
              list.first.ordering,
              tContentLessonEntityList.first.ordering,
            );
            expect(
              list.first.requiredTimeInSeconds,
              tContentLessonEntityList.first.requiredTimeInSeconds,
            );
            expect(
              list.first.xpReward,
              tContentLessonEntityList.first.xpReward,
            );
            expect(
              list.first.createdAt.toIso8601String(),
              tContentLessonEntityList.first.createdAt.toIso8601String(),
            );
            expect(
              list.first.updatedAt?.toIso8601String(),
              tContentLessonEntityList.first.updatedAt?.toIso8601String(),
            );
          },
        );
      },
    );

    test(
      'should return ServerFailure when both local and remote data sources fail',
      () async {
        // arrange
        when(
          mockLocalDataSource.getLastContentLessons(tUnitId),
        ).thenThrow(const CacheException(message: 'No cached lessons'));
        when(
          mockRemoteDataSource.getContentLessons(tUnitId),
        ).thenThrow(const ServerException(message: 'Remote fetch failed'));

        // act
        final result = await repository.getContentLessons(tUnitId);

        // assert
        verify(mockLocalDataSource.getLastContentLessons(tUnitId));
        verify(mockRemoteDataSource.getContentLessons(tUnitId));
        verifyNoMoreInteractions(mockLocalDataSource);
        expect(result, Left(ServerFailure('Remote fetch failed')));
      },
    );
  });
}
