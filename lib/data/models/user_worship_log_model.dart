import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_worship_log_model.g.dart';

@JsonSerializable()
class UserWorshipLogModel {
  final String id;
  final String userId;
  final String worshipId;
  final DateTime date;
  final bool isCompleted;
  final DateTime? completedAt;
  final int currentValue;

  UserWorshipLogModel({
    required this.id,
    required this.userId,
    required this.worshipId,
    required this.date,
    required this.isCompleted,
    this.completedAt,
    required this.currentValue,
  });

  UserWorshipLog toEntity() {
    return UserWorshipLog(
      id: id,
      userId: userId,
      worshipId: worshipId,
      date: date,
      isCompleted: isCompleted,
      completedAt: completedAt,
      currentValue: currentValue,
    );
  }

  factory UserWorshipLogModel.fromEntity(UserWorshipLog entity) {
    return UserWorshipLogModel(
      id: entity.id,
      userId: entity.userId,
      worshipId: entity.worshipId,
      date: entity.date,
      isCompleted: entity.isCompleted,
      completedAt: entity.completedAt,
      currentValue: entity.currentValue,
    );
  }

  factory UserWorshipLogModel.fromJson(Map<String, dynamic> json) =>
      _$UserWorshipLogModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserWorshipLogModelToJson(this);
}
