import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_achievement_model.g.dart';

@Collection()
@JsonSerializable()
class UserAchievementModel {
  Id? isarId;

  final String id;
  final String userId;
  final String badgeId;
  final DateTime unlockedAt;
  final bool isNew;

  UserAchievementModel({
    this.isarId,
    required this.id,
    required this.userId,
    required this.badgeId,
    required this.unlockedAt,
    required this.isNew,
  });

  UserAchievement toEntity() {
    return UserAchievement(
      id: id,
      userId: userId,
      badgeId: badgeId,
      unlockedAt: unlockedAt,
      isNew: isNew,
    );
  }

  factory UserAchievementModel.fromEntity(UserAchievement entity) {
    return UserAchievementModel(
      id: entity.id,
      userId: entity.userId,
      badgeId: entity.badgeId,
      unlockedAt: entity.unlockedAt,
      isNew: entity.isNew,
    );
  }

  factory UserAchievementModel.fromJson(Map<String, dynamic> json) =>
      _$UserAchievementModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAchievementModelToJson(this);
}
