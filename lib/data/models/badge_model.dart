import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'badge_model.g.dart';

@JsonSerializable()
class BadgeModel {
  final String id;
  final String title;
  final String description;
  final String icon;
  final int targetValue;
  final int gemReward;
  final DateTime createdAt;
  final DateTime? updatedAt;

  BadgeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.targetValue,
    required this.gemReward,
    required this.createdAt,
    this.updatedAt,
  });

  BadgeEntity toEntity() {
    return BadgeEntity(
      id: id,
      title: title,
      description: description,
      icon: icon,
      targetValue: targetValue,
      gemReward: gemReward,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory BadgeModel.fromEntity(BadgeEntity entity) {
    return BadgeModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      icon: entity.icon,
      targetValue: entity.targetValue,
      gemReward: entity.gemReward,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory BadgeModel.fromJson(Map<String, dynamic> json) =>
      _$BadgeModelFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeModelToJson(this);
}
