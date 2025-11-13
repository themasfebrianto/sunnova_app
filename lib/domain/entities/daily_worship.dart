import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_worship.freezed.dart';
part 'daily_worship.g.dart';

/// Represents a daily worship activity.
@freezed
abstract class DailyWorship with _$DailyWorship {
  const factory DailyWorship({
    required String id,
    required String title,
    required String description,
    required String icon,
    required String category,
    required int gemReward,
    required int xpReward,
    required bool isRepeatable,
    required bool isDefault,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _DailyWorship;

  factory DailyWorship.fromJson(Map<String, dynamic> json) =>
      _$DailyWorshipFromJson(json);
}
