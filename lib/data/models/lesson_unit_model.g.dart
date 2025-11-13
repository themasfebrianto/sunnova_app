// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_unit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonUnitModel _$LessonUnitModelFromJson(Map<String, dynamic> json) =>
    LessonUnitModel(
      isarId: (json['isarId'] as num?)?.toInt(),
      id: json['id'] as String,
      moduleId: json['moduleId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      ordering: (json['ordering'] as num).toInt(),
      requiredLevel: (json['requiredLevel'] as num?)?.toInt(),
      isLocked: json['isLocked'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LessonUnitModelToJson(LessonUnitModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'id': instance.id,
      'moduleId': instance.moduleId,
      'title': instance.title,
      'description': instance.description,
      'ordering': instance.ordering,
      'requiredLevel': instance.requiredLevel,
      'isLocked': instance.isLocked,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
