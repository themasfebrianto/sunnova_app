import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/course/course_local_data_source_impl.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';

import 'course_local_data_source_test.mocks.dart'; // Generated mock file

@GenerateMocks([DatabaseHelper])
void main() {
  late CourseLocalDataSourceImpl dataSource;
  late MockDatabaseHelper mockDatabaseHelper;

  setUp(() {
    mockDatabaseHelper = MockDatabaseHelper();
    dataSource = CourseLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  final tCourseModuleModel = CourseModuleModel(
    id: 'module1',
    title: 'Test Module',
    description: 'Description',
    icon: 'icon.png',
    ordering: 1,
    requiredXpToUnlock: 0,
    isLocked: false,
    createdAt: DateTime.now(),
  );
  final tCourseModuleList = [tCourseModuleModel];

  final tLessonUnitModel = LessonUnitModel(
    id: 'unit1',
    moduleId: 'module1',
    title: 'Test Unit',
    description: 'Unit Description',
    ordering: 1,
    isLocked: false,
    createdAt: DateTime.now(),
  );
  final tLessonUnitList = [tLessonUnitModel];

  final tContentLessonModel = ContentLessonModel(
    id: 'lesson1',
    unitId: 'unit1',
    title: 'Test Lesson',
    content: 'Lesson Content',
    ordering: 1,
    requiredTimeInSeconds: 60,
    xpReward: 10,
    createdAt: DateTime.now(),
  );
  final tContentLessonList = [tContentLessonModel];

  group('Course Modules', () {
    group('cacheCourseModules', () {
      test(
        'should call DatabaseHelper.cacheCourseModules to cache the course modules',
        () async {
          // arrange
          when(mockDatabaseHelper.cacheCourseModules(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.cacheCourseModules(tCourseModuleList);

          // assert
          verify(mockDatabaseHelper.cacheCourseModules(tCourseModuleList));
        },
      );
    });

    group('getLastCourseModules', () {
      test(
        'should return List<CourseModuleModel> when there are cached course modules',
        () async {
          // arrange
          when(mockDatabaseHelper.getCourseModules())
              .thenAnswer((_) async => tCourseModuleList);

          // act
          final result = await dataSource.getLastCourseModules();

          // assert
          expect(result, tCourseModuleList);
          verify(mockDatabaseHelper.getCourseModules());
        },
      );

      test(
        'should throw CacheException when there are no cached course modules',
        () async {
          // arrange
          when(mockDatabaseHelper.getCourseModules())
              .thenAnswer((_) async => []);

          // act
          final call = dataSource.getLastCourseModules;

          // assert
          expect(() => call(), throwsA(isA<CacheException>()));
          verify(mockDatabaseHelper.getCourseModules());
        },
      );
    });

    group('clearCourseModules', () {
      test(
        'should call DatabaseHelper.clearCourseModules to clear the course modules',
        () async {
          // arrange
          when(mockDatabaseHelper.clearCourseModules())
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.clearCourseModules();

          // assert
          verify(mockDatabaseHelper.clearCourseModules());
        },
      );
    });
  });

  group('Lesson Units', () {
    group('cacheLessonUnits', () {
      test(
        'should call DatabaseHelper.cacheLessonUnits to cache the lesson units',
        () async {
          // arrange
          when(mockDatabaseHelper.cacheLessonUnits(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.cacheLessonUnits(tLessonUnitList);

          // assert
          verify(mockDatabaseHelper.cacheLessonUnits(tLessonUnitList));
        },
      );
    });

    group('getLastLessonUnits', () {
      test(
        'should return List<LessonUnitModel> when there are cached lesson units',
        () async {
          // arrange
          when(mockDatabaseHelper.getLessonUnits(any))
              .thenAnswer((_) async => tLessonUnitList);

          // act
          final result = await dataSource.getLastLessonUnits('module1');

          // assert
          expect(result, tLessonUnitList);
          verify(mockDatabaseHelper.getLessonUnits('module1'));
        },
      );

      test(
        'should throw CacheException when there are no cached lesson units',
        () async {
          // arrange
          when(mockDatabaseHelper.getLessonUnits(any))
              .thenAnswer((_) async => []);

          // act
          final call = dataSource.getLastLessonUnits;

          // assert
          expect(() => call('module1'), throwsA(isA<CacheException>()));
          verify(mockDatabaseHelper.getLessonUnits('module1'));
        },
      );
    });

    group('clearLessonUnits', () {
      test(
        'should call DatabaseHelper.clearLessonUnits to clear the lesson units',
        () async {
          // arrange
          when(mockDatabaseHelper.clearLessonUnits(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.clearLessonUnits('module1');

          // assert
          verify(mockDatabaseHelper.clearLessonUnits('module1'));
        },
      );
    });
  });

  group('Content Lessons', () {
    group('cacheContentLessons', () {
      test(
        'should call DatabaseHelper.cacheContentLessons to cache the content lessons',
        () async {
          // arrange
          when(mockDatabaseHelper.cacheContentLessons(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.cacheContentLessons(tContentLessonList);

          // assert
          verify(mockDatabaseHelper.cacheContentLessons(tContentLessonList));
        },
      );
    });

    group('getLastContentLessons', () {
      test(
        'should return List<ContentLessonModel> when there are cached content lessons',
        () async {
          // arrange
          when(mockDatabaseHelper.getContentLessons(any))
              .thenAnswer((_) async => tContentLessonList);

          // act
          final result = await dataSource.getLastContentLessons('unit1');

          // assert
          expect(result, tContentLessonList);
          verify(mockDatabaseHelper.getContentLessons('unit1'));
        },
      );

      test(
        'should throw CacheException when there are no cached content lessons',
        () async {
          // arrange
          when(mockDatabaseHelper.getContentLessons(any))
              .thenAnswer((_) async => []);

          // act
          final call = dataSource.getLastContentLessons;

          // assert
          expect(() => call('unit1'), throwsA(isA<CacheException>()));
          verify(mockDatabaseHelper.getContentLessons('unit1'));
        },
      );
    });

    group('clearContentLessons', () {
      test(
        'should call DatabaseHelper.clearContentLessons to clear the content lessons',
        () async {
          // arrange
          when(mockDatabaseHelper.clearContentLessons(any))
              .thenAnswer((_) async => Future.value());

          // act
          await dataSource.clearContentLessons('unit1');

          // assert
          verify(mockDatabaseHelper.clearContentLessons('unit1'));
        },
      );
    });
  });
}