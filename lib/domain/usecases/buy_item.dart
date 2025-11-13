import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class BuyItem {
  final ShopRepository repository;

  BuyItem(this.repository);

  Future<Either<Failure, void>> call(BuyItemParams params) async {
    return await repository.buyItem(params.userId, params.itemId, params.quantity);
  }
}

class BuyItemParams extends Equatable {
  final String userId;
  final String itemId;
  final int quantity;

  const BuyItemParams({required this.userId, required this.itemId, required this.quantity});

  @override
  List<Object?> get props => [userId, itemId, quantity];
}
