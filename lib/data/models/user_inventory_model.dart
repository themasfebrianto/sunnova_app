import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_inventory_model.g.dart';

@JsonSerializable()
class UserInventoryModel {
  final String id;
  final String userId;
  final String itemId;
  final int quantity;

  UserInventoryModel({
    required this.id,
    required this.userId,
    required this.itemId,
    required this.quantity,
  });

  UserInventory toEntity() {
    return UserInventory(
      id: id,
      userId: userId,
      itemId: itemId,
      quantity: quantity,
    );
  }

  factory UserInventoryModel.fromEntity(UserInventory entity) {
    return UserInventoryModel(
      id: entity.id,
      userId: entity.userId,
      itemId: entity.itemId,
      quantity: entity.quantity,
    );
  }

  factory UserInventoryModel.fromJson(Map<String, dynamic> json) =>
      _$UserInventoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInventoryModelToJson(this);
}
