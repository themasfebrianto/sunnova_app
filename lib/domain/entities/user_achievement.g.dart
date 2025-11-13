// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAchievement _$UserAchievementFromJson(Map<String, dynamic> json) =>
    _UserAchievement(
      id: json['id'] as String,
      userId: json['userId'] as String,
      badgeId: json['badgeId'] as String,
      unlockedAt: DateTime.parse(json['unlockedAt'] as String),
      isNew: json['isNew'] as bool,
    );

Map<String, dynamic> _$UserAchievementToJson(_UserAchievement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'badgeId': instance.badgeId,
      'unlockedAt': instance.unlockedAt.toIso8601String(),
      'isNew': instance.isNew,
    };
