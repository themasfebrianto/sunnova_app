import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge_entity.freezed.dart';
part 'badge_entity.g.dart';

/// Represents a badge or achievement in the application.
@freezed
abstract class BadgeEntity with _$BadgeEntity {
  const factory BadgeEntity({
    required String id,
    required String title,
    required String description,
    required String icon,
    required int targetValue,
    required int gemReward,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _BadgeEntity;

  factory BadgeEntity.fromJson(Map<String, dynamic> json) =>
      _$BadgeEntityFromJson(json);
}
