import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/core/services/database_helper.dart';
import 'package:sunnova_app/data/datasources/shop/shop_local_data_source.dart';
import 'package:sunnova_app/data/models/item_shop_model.dart';
import 'package:sunnova_app/data/models/user_inventory_model.dart';

class ShopLocalDataSourceImpl implements ShopLocalDataSource {
  final DatabaseHelper databaseHelper;

  ShopLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<void> cacheItemShopEntities(List<ItemShopModel> items) async {
    await databaseHelper.cacheItemShopEntities(items);
  }

  @override
  Future<void> cacheUserInventory(List<UserInventoryModel> inventory) async {
    await databaseHelper.cacheUserInventory(inventory);
  }

  @override
  Future<void> clearItemShopEntities() async {
    await databaseHelper.clearItemShopEntities();
  }

  @override
  Future<void> clearUserInventory(String userId) async {
    await databaseHelper.clearUserInventory(userId);
  }

  @override
  Future<List<ItemShopModel>> getLastItemShopEntities() async {
    final items = await databaseHelper.getItemShopEntities();
    if (items.isNotEmpty) {
      return items;
    } else {
      throw const CacheException(message: 'No cached shop items found');
    }
  }

  @override
  Future<List<UserInventoryModel>> getLastUserInventory(String userId) async {
    final inventory = await databaseHelper.getUserInventory(userId);
    if (inventory.isNotEmpty) {
      return inventory;
    } else {
      throw const CacheException(message: 'No cached user inventory found');
    }
  }
}
