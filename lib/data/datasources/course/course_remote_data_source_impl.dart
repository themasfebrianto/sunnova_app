import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/course/course_remote_data_source.dart';
import 'package:sunnova_app/data/models/course_module_model.dart';
import 'package:sunnova_app/data/models/lesson_unit_model.dart';
import 'package:sunnova_app/data/models/content_lesson_model.dart';

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  @override
  Future<List<CourseModuleModel>> getCourseModules() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    // Simulate returning some dummy data
    return [
      CourseModuleModel(
        id: 'cm1',
        title: 'Tajwid Dasar',
        description: 'Pelajari dasar-dasar ilmu tajwid.',
        icon: 'icon_tajwid',
        ordering: 1,
        requiredXpToUnlock: 0,
        isLocked: false,
        createdAt: DateTime.now(),
      ),
      CourseModuleModel(
        id: 'cm2',
        title: 'Fiqih Shalat',
        description: 'Memahami tata cara shalat yang benar.',
        icon: 'icon_shalat',
        ordering: 2,
        requiredXpToUnlock: 100,
        isLocked: true,
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<List<LessonUnitModel>> getLessonUnits(String moduleId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (moduleId == 'cm1') {
      return [
        LessonUnitModel(
          id: 'lu1',
          moduleId: 'cm1',
          title: 'Hukum Nun Sukun',
          description: 'Penjelasan lengkap hukum nun sukun dan tanwin.',
          ordering: 1,
          isLocked: false,
          createdAt: DateTime.now(),
        ),
        LessonUnitModel(
          id: 'lu2',
          moduleId: 'cm1',
          title: 'Hukum Mim Sukun',
          description: 'Penjelasan lengkap hukum mim sukun.',
          ordering: 2,
          isLocked: false,
          createdAt: DateTime.now(),
        ),
      ];
    }
    throw ServerException(message: 'Module not found');
  }

  @override
  Future<List<ContentLessonModel>> getContentLessons(String unitId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (unitId == 'lu1') {
      return [
        ContentLessonModel(
          id: 'cl1',
          unitId: 'lu1',
          title: 'Idzhar Halqi',
          content: 'Konten pelajaran Idzhar Halqi...',
          ordering: 1,
          requiredTimeInSeconds: 300,
          xpReward: 10,
          createdAt: DateTime.now(),
        ),
        ContentLessonModel(
          id: 'cl2',
          unitId: 'lu1',
          title: 'Idgham Bi Ghunnah',
          content: 'Konten pelajaran Idgham Bi Ghunnah...',
          ordering: 2,
          requiredTimeInSeconds: 400,
          xpReward: 15,
          createdAt: DateTime.now(),
        ),
      ];
    }
    throw ServerException(message: 'Unit not found');
  }
}
