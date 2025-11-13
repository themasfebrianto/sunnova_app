// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_hint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionHint _$QuestionHintFromJson(Map<String, dynamic> json) =>
    _QuestionHint(
      questionId: json['questionId'] as String,
      hintText: json['hintText'] as String,
      gemCost: (json['gemCost'] as num).toInt(),
    );

Map<String, dynamic> _$QuestionHintToJson(_QuestionHint instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'hintText': instance.hintText,
      'gemCost': instance.gemCost,
    };
