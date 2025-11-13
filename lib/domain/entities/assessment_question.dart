import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_question.freezed.dart';
part 'assessment_question.g.dart';

/// Represents an assessment question.
@freezed
abstract class AssessmentQuestion with _$AssessmentQuestion {
  const factory AssessmentQuestion({
    required String id,
    required String lessonId,
    required String question,
    required List<String> options,
    required int correctAnswerIndex,
    required String explanation,
    required int difficultyLevel,
    required int ordering,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _AssessmentQuestion;

  factory AssessmentQuestion.fromJson(Map<String, dynamic> json) =>
      _$AssessmentQuestionFromJson(json);
}
