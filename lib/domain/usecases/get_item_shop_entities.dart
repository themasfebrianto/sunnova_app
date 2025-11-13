import 'package:dartz/dartz.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetItemShopEntities {
  final ShopRepository repository;

  GetItemShopEntities(this.repository);

  Future<Either<Failure, List<ItemShopEntity>>> call() async {
    return await repository.getItemShopEntities();
  }
}
