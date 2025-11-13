import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'daily_worship_model.g.dart';

@Collection()
@JsonSerializable()
class DailyWorshipModel {
  Id? isarId;

  final String id;
  final String title;
  final String description;
  final String icon;
  final String category;
  final int gemReward;
  final int xpReward;
  final bool isRepeatable;
  final bool isDefault;
  final DateTime createdAt;
  final DateTime? updatedAt;

  DailyWorshipModel({
    this.isarId,
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.category,
    required this.gemReward,
    required this.xpReward,
    required this.isRepeatable,
    required this.isDefault,
    required this.createdAt,
    this.updatedAt,
  });

  DailyWorship toEntity() {
    return DailyWorship(
      id: id,
      title: title,
      description: description,
      icon: icon,
      category: category,
      gemReward: gemReward,
      xpReward: xpReward,
      isRepeatable: isRepeatable,
      isDefault: isDefault,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory DailyWorshipModel.fromEntity(DailyWorship entity) {
    return DailyWorshipModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      icon: entity.icon,
      category: entity.category,
      gemReward: entity.gemReward,
      xpReward: entity.xpReward,
      isRepeatable: entity.isRepeatable,
      isDefault: entity.isDefault,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory DailyWorshipModel.fromJson(Map<String, dynamic> json) =>
      _$DailyWorshipModelFromJson(json);

  Map<String, dynamic> toJson() => _$DailyWorshipModelToJson(this);
}
