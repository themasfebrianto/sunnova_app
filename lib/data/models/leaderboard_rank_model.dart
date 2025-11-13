import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'leaderboard_rank_model.g.dart';

@Collection()
@JsonSerializable()
class LeaderboardRankModel {
  Id? isarId;

  final String rankType;
  final String userId;
  final int scoreValue;
  final int rank;
  final DateTime createdAt;

  LeaderboardRankModel({
    this.isarId,
    required this.rankType,
    required this.userId,
    required this.scoreValue,
    required this.rank,
    required this.createdAt,
  });

  LeaderboardRank toEntity() {
    return LeaderboardRank(
      rankType: rankType,
      userId: userId,
      scoreValue: scoreValue,
      rank: rank,
      createdAt: createdAt,
    );
  }

  factory LeaderboardRankModel.fromEntity(LeaderboardRank entity) {
    return LeaderboardRankModel(
      rankType: entity.rankType,
      userId: entity.userId,
      scoreValue: entity.scoreValue,
      rank: entity.rank,
      createdAt: entity.createdAt,
    );
  }

  factory LeaderboardRankModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardRankModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeaderboardRankModelToJson(this);
}
