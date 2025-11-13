// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseModuleModel _$CourseModuleModelFromJson(Map<String, dynamic> json) =>
    CourseModuleModel(
      isarId: (json['isarId'] as num?)?.toInt(),
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

Map<String, dynamic> _$CourseModuleModelToJson(CourseModuleModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
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
