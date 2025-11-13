import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_answer_log.freezed.dart';
part 'user_answer_log.g.dart';

/// Represents a user's answer to an assessment question.
@freezed
abstract class UserAnswerLog with _$UserAnswerLog {
  const factory UserAnswerLog({
    required String id,
    required String userId,
    required String questionId,
    required int selectedAnswerIndex,
    required bool isCorrect,
    required bool isHintUsed,
    required DateTime attemptedAt,
  }) = _UserAnswerLog;

  factory UserAnswerLog.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerLogFromJson(json);
}
