import 'package:flutter_test/flutter_test.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source_impl.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';

void main() {
  late CourseRemoteDataSourceImpl dataSource;

  setUp(() {
    dataSource = CourseRemoteDataSourceImpl();
  });

  group('getCourseModules', () {
    final tCourseModuleModel = CourseModuleModel(
      id: 'cm1',
      title: 'Tajwid Dasar',
      description: 'Pelajari dasar-dasar ilmu tajwid.',
      icon: 'icon_tajwid',
      ordering: 1,
      requiredXpToUnlock: 0,
      isLocked: false,
      createdAt: DateTime.now(), // Keep DateTime.now() for model creation
    );

    test(
      'should return a list of CourseModuleModel when the call is successful',
      () async {
        // act
        final result = await dataSource.getCourseModules();

        // assert
        expect(result, isA<List<CourseModuleModel>>());
        // Compare only the ID and other static fields, ignore createdAt/updatedAt for direct comparison
        expect(result.first.id, tCourseModuleModel.id);
        expect(result.first.title, tCourseModuleModel.title);
        expect(result.first.description, tCourseModuleModel.description);
        expect(result.first.icon, tCourseModuleModel.icon);
        expect(result.first.ordering, tCourseModuleModel.ordering);
        expect(result.first.requiredXpToUnlock, tCourseModuleModel.requiredXpToUnlock);
        expect(result.first.isLocked, tCourseModuleModel.isLocked);
      },
    );

    test(
      'should not throw ServerException when the call is successful',
      () async {
        // act
        final call = dataSource.getCourseModules;

        // assert
        expect(() => call(), returnsNormally);
      },
    );
  });

  group('getLessonUnits', () {
    const tModuleId = 'cm1';
    final tLessonUnitModel = LessonUnitModel(
      id: 'lu1',
      moduleId: tModuleId,
      title: 'Hukum Nun Sukun',
      description: 'Penjelasan lengkap hukum nun sukun dan tanwin.',
      ordering: 1,
      isLocked: false,
      createdAt: DateTime.now(), // Keep DateTime.now() for model creation
    );

    test(
      'should return a list of LessonUnitModel when the call is successful',
      () async {
        // act
        final result = await dataSource.getLessonUnits(tModuleId);

        // assert
        expect(result, isA<List<LessonUnitModel>>());
        // Compare only the ID and other static fields
        expect(result.first.id, tLessonUnitModel.id);
        expect(result.first.moduleId, tLessonUnitModel.moduleId);
        expect(result.first.title, tLessonUnitModel.title);
        expect(result.first.description, tLessonUnitModel.description);
        expect(result.first.ordering, tLessonUnitModel.ordering);
        expect(result.first.isLocked, tLessonUnitModel.isLocked);
      },
    );

    test(
      'should throw ServerException when the call is unsuccessful with invalid moduleId',
      () async {
        // act
        final call = dataSource.getLessonUnits;

        // assert
        expect(() => call('invalidModuleId'), throwsA(isA<ServerException>()));
      },
    );
  });

  group('getContentLessons', () {
    const tUnitId = 'lu1';
    final tContentLessonModel = ContentLessonModel(
      id: 'cl1',
      unitId: tUnitId,
      title: 'Idzhar Halqi',
      content: 'Konten pelajaran Idzhar Halqi...',
      ordering: 1,
      requiredTimeInSeconds: 300,
      xpReward: 10,
      createdAt: DateTime.now(), // Keep DateTime.now() for model creation
    );

    test(
      'should return a list of ContentLessonModel when the call is successful',
      () async {
        // act
        final result = await dataSource.getContentLessons(tUnitId);

        // assert
        expect(result, isA<List<ContentLessonModel>>());
        // Compare only the ID and other static fields
        expect(result.first.id, tContentLessonModel.id);
        expect(result.first.unitId, tContentLessonModel.unitId);
        expect(result.first.title, tContentLessonModel.title);
        expect(result.first.content, tContentLessonModel.content);
        expect(result.first.ordering, tContentLessonModel.ordering);
        expect(result.first.requiredTimeInSeconds, tContentLessonModel.requiredTimeInSeconds);
        expect(result.first.xpReward, tContentLessonModel.xpReward);
      },
    );

    test(
      'should throw ServerException when the call is unsuccessful with invalid unitId',
      () async {
        // act
        final call = dataSource.getContentLessons;

        // assert
        expect(() => call('invalidUnitId'), throwsA(isA<ServerException>()));
      },
    );
  });
}