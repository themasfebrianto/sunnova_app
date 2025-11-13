// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_rank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaderboardRankModel _$LeaderboardRankModelFromJson(
  Map<String, dynamic> json,
) => LeaderboardRankModel(
  isarId: (json['isarId'] as num?)?.toInt(),
  rankType: json['rankType'] as String,
  userId: json['userId'] as String,
  scoreValue: (json['scoreValue'] as num).toInt(),
  rank: (json['rank'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$LeaderboardRankModelToJson(
  LeaderboardRankModel instance,
) => <String, dynamic>{
  'isarId': instance.isarId,
  'rankType': instance.rankType,
  'userId': instance.userId,
  'scoreValue': instance.scoreValue,
  'rank': instance.rank,
  'createdAt': instance.createdAt.toIso8601String(),
};
