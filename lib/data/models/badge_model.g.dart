// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BadgeModel _$BadgeModelFromJson(Map<String, dynamic> json) => BadgeModel(
  isarId: (json['isarId'] as num?)?.toInt(),
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
  targetValue: (json['targetValue'] as num).toInt(),
  gemReward: (json['gemReward'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$BadgeModelToJson(BadgeModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'targetValue': instance.targetValue,
      'gemReward': instance.gemReward,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
