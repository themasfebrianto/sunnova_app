// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_worship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWorshipModel _$DailyWorshipModelFromJson(Map<String, dynamic> json) =>
    DailyWorshipModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      category: json['category'] as String,
      gemReward: (json['gemReward'] as num).toInt(),
      xpReward: (json['xpReward'] as num).toInt(),
      isRepeatable: json['isRepeatable'] as bool,
      isDefault: json['isDefault'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DailyWorshipModelToJson(DailyWorshipModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'category': instance.category,
      'gemReward': instance.gemReward,
      'xpReward': instance.xpReward,
      'isRepeatable': instance.isRepeatable,
      'isDefault': instance.isDefault,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
