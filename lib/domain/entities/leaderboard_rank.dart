import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_rank.freezed.dart';
part 'leaderboard_rank.g.dart';

/// Represents a user's rank on the leaderboard.
@freezed
abstract class LeaderboardRank with _$LeaderboardRank {
  const factory LeaderboardRank({
    required String rankType,
    required String userId,
    required int scoreValue,
    required int rank,
    required DateTime createdAt,
  }) = _LeaderboardRank;

  factory LeaderboardRank.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardRankFromJson(json);
}
