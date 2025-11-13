// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaderboardRank _$LeaderboardRankFromJson(Map<String, dynamic> json) =>
    _LeaderboardRank(
      rankType: json['rankType'] as String,
      userId: json['userId'] as String,
      scoreValue: (json['scoreValue'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$LeaderboardRankToJson(_LeaderboardRank instance) =>
    <String, dynamic>{
      'rankType': instance.rankType,
      'userId': instance.userId,
      'scoreValue': instance.scoreValue,
      'rank': instance.rank,
      'createdAt': instance.createdAt.toIso8601String(),
    };
