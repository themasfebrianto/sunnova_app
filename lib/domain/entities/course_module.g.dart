// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModule _$CourseModuleFromJson(Map<String, dynamic> json) =>
    _CourseModule(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      ordering: (json['ordering'] as num).toInt(),
      requiredXpToUnlock: (json['requiredXpToUnlock'] as num).toInt(),
      isLocked: json['isLocked'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CourseModuleToJson(_CourseModule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'ordering': instance.ordering,
      'requiredXpToUnlock': instance.requiredXpToUnlock,
      'isLocked': instance.isLocked,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
