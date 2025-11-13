import 'package:sunnova_app/data/models/item_shop_model.dart';
import 'package:sunnova_app/data/models/user_inventory_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class ShopLocalDataSource {
  /// Retrieves cached shop items.
  /// Throws [CacheException] if no data is present.
  Future<List<ItemShopModel>> getLastItemShopEntities();

  /// Caches a list of [ItemShopModel].
  Future<void> cacheItemShopEntities(List<ItemShopModel> items);

  /// Clears cached shop items.
  Future<void> clearItemShopEntities();

  /// Retrieves cached user inventory for a given user ID.
  /// Throws [CacheException] if no data is present.
  Future<List<UserInventoryModel>> getLastUserInventory(String userId);

  /// Caches a list of [UserInventoryModel].
  Future<void> cacheUserInventory(List<UserInventoryModel> inventory);

  /// Clears cached user inventory.
  Future<void> clearUserInventory(String userId);
}
