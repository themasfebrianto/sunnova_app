// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInventoryModel _$UserInventoryModelFromJson(Map<String, dynamic> json) =>
    UserInventoryModel(
      isarId: (json['isarId'] as num?)?.toInt(),
      id: json['id'] as String,
      userId: json['userId'] as String,
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$UserInventoryModelToJson(UserInventoryModel instance) =>
    <String, dynamic>{
      'isarId': instance.isarId,
      'id': instance.id,
      'userId': instance.userId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };
