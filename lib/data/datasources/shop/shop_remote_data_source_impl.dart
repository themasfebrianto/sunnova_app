import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/data/datasources/shop/shop_remote_data_source.dart';
import 'package:sunnova_app/data/models/item_shop_model.dart';
import 'package:sunnova_app/data/models/user_inventory_model.dart';

class ShopRemoteDataSourceImpl implements ShopRemoteDataSource {
  @override
  Future<List<ItemShopModel>> getItemShopEntities() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      ItemShopModel(
        id: 'item1',
        title: 'Extra Life',
        description: 'Gain an extra life in quizzes.',
        icon: 'icon_extra_life',
        gemCost: 10,
        effect: 'EXTRA_LIFE',
        createdAt: DateTime.now(),
      ),
      ItemShopModel(
        id: 'item2',
        title: 'Skip Task',
        description: 'Skip one daily worship task.',
        icon: 'icon_skip_task',
        gemCost: 20,
        effect: 'SKIP_TASK',
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Future<void> buyItem(String userId, String itemId, int quantity) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    // Simulate successful purchase
    print('User $userId bought $quantity of $itemId');
    return Future.value();
  }

  @override
  Future<List<UserInventoryModel>> getUserInventory(String userId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    if (userId == 'test_uid_123') {
      return [
        UserInventoryModel(
          id: 'inv1',
          userId: userId,
          itemId: 'item1',
          quantity: 2,
        ),
      ];
    }
    return [];
  }
}
