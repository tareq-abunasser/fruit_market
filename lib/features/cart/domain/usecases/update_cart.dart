import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';

@LazySingleton()
class UpdateCart {
  final ICartRepository _repository;

  UpdateCart(this._repository);

  Future<Either<Failure, Unit>> call(List<CartItem> cartItems) async {
    return await _repository.updateCart(cartItems);
  }
}
