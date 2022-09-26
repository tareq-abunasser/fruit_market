import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';

@LazySingleton()
class ClearCart {
  final ICartRepository _repository;

  ClearCart(this._repository);

  Future<Either<Failure, Unit>> call() async {
    return await _repository.clearCart();
  }

}

