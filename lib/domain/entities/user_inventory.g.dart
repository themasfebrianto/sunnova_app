// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInventory _$UserInventoryFromJson(Map<String, dynamic> json) =>
    _UserInventory(
      id: json['id'] as String,
      userId: json['userId'] as String,
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$UserInventoryToJson(_UserInventory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };
