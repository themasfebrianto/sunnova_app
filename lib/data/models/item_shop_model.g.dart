// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemShopModel _$ItemShopModelFromJson(Map<String, dynamic> json) =>
    ItemShopModel(
      isarId: (json['isarId'] as num?)?.toInt(),
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      gemCost: (json['gemCost'] as num).toInt(),
      effect: json['effect'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ItemShopModelToJson(ItemShopModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'gemCost': instance.gemCost,
      'effect': instance.effect,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
