import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'course_module_model.g.dart';

@Collection()
@JsonSerializable()
class CourseModuleModel {
  Id? isarId;

  final String id;
  final String title;
  final String description;
  final String icon;
  final int ordering;
  final int requiredXpToUnlock;
  final bool isLocked;
  final DateTime createdAt;
  final DateTime? updatedAt;

  CourseModuleModel({
    this.isarId,
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.ordering,
    required this.requiredXpToUnlock,
    required this.isLocked,
    required this.createdAt,
    this.updatedAt,
  });

  CourseModule toEntity() {
    return CourseModule(
      id: id,
      title: title,
      description: description,
      icon: icon,
      ordering: ordering,
      requiredXpToUnlock: requiredXpToUnlock,
      isLocked: isLocked,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory CourseModuleModel.fromEntity(CourseModule entity) {
    return CourseModuleModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      icon: entity.icon,
      ordering: entity.ordering,
      requiredXpToUnlock: entity.requiredXpToUnlock,
      isLocked: entity.isLocked,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory CourseModuleModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModuleModelFromJson(json);

  Map<String, dynamic> toJson() => _$CourseModuleModelToJson(this);
}
