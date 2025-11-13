import 'package:sunnova_app/data/models/item_shop_model.dart';
import 'package:sunnova_app/data/models/user_inventory_model.dart';
import 'package:sunnova_app/core/error/error.dart';

abstract class ShopRemoteDataSource {
  /// Retrieves a list of all available items in the shop.
  /// Throws [ServerException] for all error codes.
  Future<List<ItemShopModel>> getItemShopEntities();

  /// Buys an item for a user.
  /// Throws [ServerException] for all error codes.
  Future<void> buyItem(String userId, String itemId, int quantity);

  /// Retrieves a user's inventory.
  /// Throws [ServerException] for all error codes.
  Future<List<UserInventoryModel>> getUserInventory(String userId);
}
