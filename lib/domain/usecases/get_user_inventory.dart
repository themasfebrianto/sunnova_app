import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sunnova_app/core/error/error.dart';
import 'package:sunnova_app/domain/entities/entities.dart';
import 'package:sunnova_app/domain/repositories/repositories.dart';

class GetUserInventory {
  final ShopRepository repository;

  GetUserInventory(this.repository);

  Future<Either<Failure, List<UserInventory>>> call(String userId) async {
    return await repository.getUserInventory(userId);
  }
}

class GetUserInventoryParams extends Equatable {
  final String userId;

  const GetUserInventoryParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}
