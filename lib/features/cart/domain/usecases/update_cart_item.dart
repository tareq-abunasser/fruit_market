import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';

@LazySingleton()
class UpdateCartItem {
  final ICartRepository _repository;

  UpdateCartItem(this._repository);

  Future<Either<Failure, Unit>> call(CartItem cartItem) async {
    return await _repository.updateCartItem(cartItem);
  }
}
