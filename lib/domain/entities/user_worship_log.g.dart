// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_worship_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserWorshipLog _$UserWorshipLogFromJson(Map<String, dynamic> json) =>
    _UserWorshipLog(
      id: json['id'] as String,
      userId: json['userId'] as String,
      worshipId: json['worshipId'] as String,
      date: DateTime.parse(json['date'] as String),
      isCompleted: json['isCompleted'] as bool,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      currentValue: (json['currentValue'] as num).toInt(),
    );

Map<String, dynamic> _$UserWorshipLogToJson(_UserWorshipLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'worshipId': instance.worshipId,
      'date': instance.date.toIso8601String(),
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
      'currentValue': instance.currentValue,
    };
