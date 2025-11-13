import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_worship_log.freezed.dart';
part 'user_worship_log.g.dart';

/// Represents a user's log for a daily worship activity.
@freezed
abstract class UserWorshipLog with _$UserWorshipLog {
  const factory UserWorshipLog({
    required String id,
    required String userId,
    required String worshipId,
    required DateTime date,
    required bool isCompleted,
    DateTime? completedAt,
    required int currentValue,
  }) = _UserWorshipLog;

  factory UserWorshipLog.fromJson(Map<String, dynamic> json) =>
      _$UserWorshipLogFromJson(json);
}
