import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'item_shop_model.g.dart';

@Collection()
@JsonSerializable()
class ItemShopModel {
  Id? isarId;

  final String id;
  final String title;
  final String description;
  final String icon;
  final int gemCost;
  final String effect;
  final DateTime createdAt;
  final DateTime? updatedAt;

  ItemShopModel({
    this.isarId,
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.gemCost,
    required this.effect,
    required this.createdAt,
    this.updatedAt,
  });

  ItemShopEntity toEntity() {
    return ItemShopEntity(
      id: id,
      title: title,
      description: description,
      icon: icon,
      gemCost: gemCost,
      effect: effect,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory ItemShopModel.fromEntity(ItemShopEntity entity) {
    return ItemShopModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      icon: entity.icon,
      gemCost: entity.gemCost,
      effect: entity.effect,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  factory ItemShopModel.fromJson(Map<String, dynamic> json) =>
      _$ItemShopModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemShopModelToJson(this);
}
