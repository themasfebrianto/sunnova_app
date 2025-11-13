import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

abstract class ShopRepository {
  Future<Either<Failure, List<ItemShopEntity>>> getItemShopEntities();
  Future<Either<Failure, void>> buyItem(String userId, String itemId, int quantity);
  Future<Either<Failure, List<UserInventory>>> getUserInventory(String userId);
}
