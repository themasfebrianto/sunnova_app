import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_game_stats_model.g.dart';

@JsonSerializable()
class UserGameStatsModel {
  final String userId;
  final int totalXp;
  final int level;
  final int currentStreak;
  final int longestStreak;
  final DateTime? lastActiveDate;
  final int totalLessonsCompleted;
  final int totalQuizzesPassed;
  final DateTime createdAt;
  final DateTime? updatedAt;

  UserGameStatsModel({
    required this.userId,
    required this.totalXp,
    required this.level,
    required this.currentStreak,
    required this.longestStreak,
    this.lastActiveDate,
    required this.totalLessonsCompleted,
    required this.totalQuizzesPassed,
    required this.createdAt,
    this.updatedAt,
  });

  UserGameStats toEntity() {
    return UserGameStats(
      userId: userId,
      totalXp: totalXp,
      level: level,
      currentStreak: currentStreak,
      longestStreak: longestStreak,
      lastActiveDate: lastActiveDate,
      totalLessonsCompleted: totalLessonsCompleted,
      totalQuizzesPassed: totalQuizzesPassed,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory UserGameStatsModel.fromEntity(UserGameStats entity) {
    return UserGameStatsModel(
      userId: entity.userId,
      totalXp: entity.totalXp,
      level: entity.level,
      currentStreak: entity.currentStreak,
      longestStreak: entity.longestStreak,
      lastActiveDate: entity.lastActiveDate,
      totalLessonsCompleted: entity.totalLessonsCompleted,
      totalQuizzesPassed: entity.totalQuizzesPassed,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory UserGameStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserGameStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserGameStatsModelToJson(this);
}
