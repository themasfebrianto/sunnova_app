// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_hint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionHintModel _$QuestionHintModelFromJson(Map<String, dynamic> json) =>
    QuestionHintModel(
      isarId: (json['isarId'] as num?)?.toInt(),
      questionId: json['questionId'] as String,
      hintText: json['hintText'] as String,
      gemCost: (json['gemCost'] as num).toInt(),
    );

Map<String, dynamic> _$QuestionHintModelToJson(QuestionHintModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'questionId': instance.questionId,
      'hintText': instance.hintText,
      'gemCost': instance.gemCost,
    };
