import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'lesson_unit_model.g.dart';

@Collection()
@JsonSerializable()
class LessonUnitModel {
  Id? isarId;

  final String id;
  final String moduleId;
  final String title;
  final String description;
  final int ordering;
  final int? requiredLevel;
  final bool isLocked;
  final DateTime createdAt;
  final DateTime? updatedAt;

  LessonUnitModel({
    this.isarId,
    required this.id,
    required this.moduleId,
    required this.title,
    required this.description,
    required this.ordering,
    this.requiredLevel,
    required this.isLocked,
    required this.createdAt,
    this.updatedAt,
  });

  LessonUnit toEntity() {
    return LessonUnit(
      id: id,
      moduleId: moduleId,
      title: title,
      description: description,
      ordering: ordering,
      requiredLevel: requiredLevel,
      isLocked: isLocked,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory LessonUnitModel.fromEntity(LessonUnit entity) {
    return LessonUnitModel(
      id: entity.id,
      moduleId: entity.moduleId,
      title: entity.title,
      description: entity.description,
      ordering: entity.ordering,
      requiredLevel: entity.requiredLevel,
      isLocked: entity.isLocked,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory LessonUnitModel.fromJson(Map<String, dynamic> json) =>
      _$LessonUnitModelFromJson(json);

  Map<String, dynamic> toJson() => _$LessonUnitModelToJson(this);
}
