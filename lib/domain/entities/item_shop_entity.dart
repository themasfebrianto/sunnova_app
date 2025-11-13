import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_shop_entity.freezed.dart';
part 'item_shop_entity.g.dart';

/// Represents an item in the shop.
@freezed
abstract class ItemShopEntity with _$ItemShopEntity {
  const factory ItemShopEntity({
    required String id,
    required String title,
    required String description,
    required String icon,
    required int gemCost,
    required String effect,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _ItemShopEntity;

  factory ItemShopEntity.fromJson(Map<String, dynamic> json) =>
      _$ItemShopEntityFromJson(json);
}
