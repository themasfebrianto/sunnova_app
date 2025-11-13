// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_achievement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAchievementModel _$UserAchievementModelFromJson(
  Map<String, dynamic> json,
) => UserAchievementModel(
  isarId: (json['isarId'] as num?)?.toInt(),
  id: json['id'] as String,
  userId: json['userId'] as String,
  badgeId: json['badgeId'] as String,
  unlockedAt: DateTime.parse(json['unlockedAt'] as String),
  isNew: json['isNew'] as bool,
);

Map<String, dynamic> _$UserAchievementModelToJson(
  UserAchievementModel instance,
) => <String, dynamic>{
  'isarId': instance.isarId,
  'id': instance.id,
  'userId': instance.userId,
  'badgeId': instance.badgeId,
  'unlockedAt': instance.unlockedAt.toIso8601String(),
  'isNew': instance.isNew,
};
