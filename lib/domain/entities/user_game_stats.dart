import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_game_stats.freezed.dart';
part 'user_game_stats.g.dart';

/// Represents a user's game statistics.
@freezed
abstract class UserGameStats with _$UserGameStats {
  const factory UserGameStats({
    required String userId,
    required int totalXp,
    required int level,
    required int currentStreak,
    required int longestStreak,
    DateTime? lastActiveDate,
    required int totalLessonsCompleted,
    required int totalQuizzesPassed,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _UserGameStats;

  factory UserGameStats.fromJson(Map<String, dynamic> json) =>
      _$UserGameStatsFromJson(json);
}
