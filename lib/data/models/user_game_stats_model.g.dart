// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_game_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGameStatsModel _$UserGameStatsModelFromJson(Map<String, dynamic> json) =>
    UserGameStatsModel(
      userId: json['userId'] as String,
      totalXp: (json['totalXp'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      currentStreak: (json['currentStreak'] as num).toInt(),
      longestStreak: (json['longestStreak'] as num).toInt(),
      lastActiveDate: json['lastActiveDate'] == null
          ? null
          : DateTime.parse(json['lastActiveDate'] as String),
      totalLessonsCompleted: (json['totalLessonsCompleted'] as num).toInt(),
      totalQuizzesPassed: (json['totalQuizzesPassed'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserGameStatsModelToJson(UserGameStatsModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'totalXp': instance.totalXp,
      'level': instance.level,
      'currentStreak': instance.currentStreak,
      'longestStreak': instance.longestStreak,
      'lastActiveDate': instance.lastActiveDate?.toIso8601String(),
      'totalLessonsCompleted': instance.totalLessonsCompleted,
      'totalQuizzesPassed': instance.totalQuizzesPassed,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
