import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'assessment_question_model.g.dart';

@JsonSerializable()
class AssessmentQuestionModel {
  final String id;
  final String lessonId;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final String explanation;
  final int difficultyLevel;
  final int ordering;
  final DateTime createdAt;
  final DateTime? updatedAt;

  AssessmentQuestionModel({
    required this.id,
    required this.lessonId,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
    required this.difficultyLevel,
    required this.ordering,
    required this.createdAt,
    this.updatedAt,
  });

  AssessmentQuestion toEntity() {
    return AssessmentQuestion(
      id: id,
      lessonId: lessonId,
      question: question,
      options: options,
      correctAnswerIndex: correctAnswerIndex,
      explanation: explanation,
      difficultyLevel: difficultyLevel,
      ordering: ordering,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory AssessmentQuestionModel.fromEntity(AssessmentQuestion entity) {
    return AssessmentQuestionModel(
      id: entity.id,
      lessonId: entity.lessonId,
      question: entity.question,
      options: entity.options,
      correctAnswerIndex: entity.correctAnswerIndex,
      explanation: entity.explanation,
      difficultyLevel: entity.difficultyLevel,
      ordering: entity.ordering,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory AssessmentQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentQuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentQuestionModelToJson(this);
}
