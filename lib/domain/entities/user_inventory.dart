import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_inventory.freezed.dart';
part 'user_inventory.g.dart';

/// Represents a user's inventory.
@freezed
abstract class UserInventory with _$UserInventory {
  const factory UserInventory({
    required String id,
    required String userId,
    required String itemId,
    required int quantity,
  }) = _UserInventory;

  factory UserInventory.fromJson(Map<String, dynamic> json) =>
      _$UserInventoryFromJson(json);
}
