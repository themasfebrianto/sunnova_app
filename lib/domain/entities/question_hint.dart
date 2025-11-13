import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_hint.freezed.dart';
part 'question_hint.g.dart';

/// Represents a hint for a question.
@freezed
abstract class QuestionHint with _$QuestionHint {
  const factory QuestionHint({
    required String questionId,
    required String hintText,
    required int gemCost,
  }) = _QuestionHint;

  factory QuestionHint.fromJson(Map<String, dynamic> json) =>
      _$QuestionHintFromJson(json);
}
