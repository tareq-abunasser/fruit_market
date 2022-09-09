import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';

@LazySingleton()
class GetCartItems {
  final ICartRepository _repository;

  GetCartItems(this._repository);

  Future<Either<Failure, List<CartItem>>> call() async {
    return await _repository.getCart();
  }
}
