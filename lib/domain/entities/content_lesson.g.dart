// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentLesson _$ContentLessonFromJson(Map<String, dynamic> json) =>
    _ContentLesson(
      id: json['id'] as String,
      unitId: json['unitId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      videoUrl: json['videoUrl'] as String?,
      audioUrl: json['audioUrl'] as String?,
      ordering: (json['ordering'] as num).toInt(),
      requiredTimeInSeconds: (json['requiredTimeInSeconds'] as num).toInt(),
      xpReward: (json['xpReward'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ContentLessonToJson(_ContentLesson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitId': instance.unitId,
      'title': instance.title,
      'content': instance.content,
      'videoUrl': instance.videoUrl,
      'audioUrl': instance.audioUrl,
      'ordering': instance.ordering,
      'requiredTimeInSeconds': instance.requiredTimeInSeconds,
      'xpReward': instance.xpReward,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
