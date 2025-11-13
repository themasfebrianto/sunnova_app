import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'question_hint_model.g.dart';

@Collection()
@JsonSerializable()
class QuestionHintModel {
  Id? isarId;

  final String questionId;
  final String hintText;
  final int gemCost;

  QuestionHintModel({
    this.isarId,
    required this.questionId,
    required this.hintText,
    required this.gemCost,
  });

  QuestionHint toEntity() {
    return QuestionHint(
      questionId: questionId,
      hintText: hintText,
      gemCost: gemCost,
    );
  }

  factory QuestionHintModel.fromEntity(QuestionHint entity) {
    return QuestionHintModel(
      questionId: entity.questionId,
      hintText: entity.hintText,
      gemCost: entity.gemCost,
    );
  }

  factory QuestionHintModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionHintModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionHintModelToJson(this);
}
