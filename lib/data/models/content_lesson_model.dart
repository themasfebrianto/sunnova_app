import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'content_lesson_model.g.dart';

@JsonSerializable()
class ContentLessonModel {
  final String id;
  final String unitId;
  final String title;
  final String content;
  final String? videoUrl;
  final String? audioUrl;
  final int ordering;
  final int requiredTimeInSeconds;
  final int xpReward;
  final DateTime createdAt;
  final DateTime? updatedAt;

  ContentLessonModel({
    required this.id,
    required this.unitId,
    required this.title,
    required this.content,
    this.videoUrl,
    this.audioUrl,
    required this.ordering,
    required this.requiredTimeInSeconds,
    required this.xpReward,
    required this.createdAt,
    this.updatedAt,
  });

  ContentLesson toEntity() {
    return ContentLesson(
      id: id,
      unitId: unitId,
      title: title,
      content: content,
      videoUrl: videoUrl,
      audioUrl: audioUrl,
      ordering: ordering,
      requiredTimeInSeconds: requiredTimeInSeconds,
      xpReward: xpReward,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory ContentLessonModel.fromEntity(ContentLesson entity) {
    return ContentLessonModel(
      id: entity.id,
      unitId: entity.unitId,
      title: entity.title,
      content: entity.content,
      videoUrl: entity.videoUrl,
      audioUrl: entity.audioUrl,
      ordering: entity.ordering,
      requiredTimeInSeconds: entity.requiredTimeInSeconds,
      xpReward: entity.xpReward,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory ContentLessonModel.fromJson(Map<String, dynamic> json) =>
      _$ContentLessonModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContentLessonModelToJson(this);
}
