import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/item_shop_entity.dart';
import 'package:sunnova_app/domain/entities/user_inventory.dart';
import 'package:sunnova_app/domain/repositories/shop_repository.dart';
import 'package:sunnova_app/data/datasources/shop/shop_remote_data_source.dart';
import 'package:sunnova_app/data/datasources/shop/shop_local_data_source.dart';

class ShopRepositoryImpl implements ShopRepository {
  final ShopRemoteDataSource remoteDataSource;
  final ShopLocalDataSource localDataSource;

  ShopRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<ItemShopEntity>>> getItemShopEntities() async {
    try {
      final localItems = await localDataSource.getLastItemShopEntities();
      return Right(localItems.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteItems = await remoteDataSource.getItemShopEntities();
        await localDataSource.cacheItemShopEntities(remoteItems);
        return Right(remoteItems.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> buyItem(String userId, String itemId, int quantity) async {
    try {
      await remoteDataSource.buyItem(userId, itemId, quantity);
      // Optionally, update local inventory after successful purchase
      // For now, we'll just return success.
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserInventory>>> getUserInventory(String userId) async {
    try {
      final localInventory = await localDataSource.getLastUserInventory(userId);
      return Right(localInventory.map((model) => model.toEntity()).toList());
    } on CacheException catch (_) {
      try {
        final remoteInventory = await remoteDataSource.getUserInventory(userId);
        await localDataSource.cacheUserInventory(remoteInventory);
        return Right(remoteInventory.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
