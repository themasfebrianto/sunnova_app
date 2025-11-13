// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_shop_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemShopEntity _$ItemShopEntityFromJson(Map<String, dynamic> json) =>
    _ItemShopEntity(
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

Map<String, dynamic> _$ItemShopEntityToJson(_ItemShopEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'gemCost': instance.gemCost,
      'effect': instance.effect,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
