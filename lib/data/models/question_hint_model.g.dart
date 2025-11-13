// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_hint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionHintModel _$QuestionHintModelFromJson(Map<String, dynamic> json) =>
    QuestionHintModel(
      questionId: json['questionId'] as String,
      hintText: json['hintText'] as String,
      gemCost: (json['gemCost'] as num).toInt(),
    );

Map<String, dynamic> _$QuestionHintModelToJson(QuestionHintModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'hintText': instance.hintText,
      'gemCost': instance.gemCost,
    };
