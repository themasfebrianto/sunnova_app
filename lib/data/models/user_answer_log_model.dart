import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_answer_log_model.g.dart';

@JsonSerializable()
class UserAnswerLogModel {
  final String id;
  final String userId;
  final String questionId;
  final int selectedAnswerIndex;
  final bool isCorrect;
  final bool isHintUsed;
  final DateTime attemptedAt;

  UserAnswerLogModel({
    required this.id,
    required this.userId,
    required this.questionId,
    required this.selectedAnswerIndex,
    required this.isCorrect,
    required this.isHintUsed,
    required this.attemptedAt,
  });

  UserAnswerLog toEntity() {
    return UserAnswerLog(
      id: id,
      userId: userId,
      questionId: questionId,
      selectedAnswerIndex: selectedAnswerIndex,
      isCorrect: isCorrect,
      isHintUsed: isHintUsed,
      attemptedAt: attemptedAt,
    );
  }

  factory UserAnswerLogModel.fromEntity(UserAnswerLog entity) {
    return UserAnswerLogModel(
      id: entity.id,
      userId: entity.userId,
      questionId: entity.questionId,
      selectedAnswerIndex: entity.selectedAnswerIndex,
      isCorrect: entity.isCorrect,
      isHintUsed: entity.isHintUsed,
      attemptedAt: entity.attemptedAt,
    );
  }

  factory UserAnswerLogModel.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerLogModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAnswerLogModelToJson(this);
}
