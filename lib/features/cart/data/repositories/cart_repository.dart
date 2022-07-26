import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:fruit_market/features/home/data/models/product_dtos.dart';
import 'package:fruit_market/features/home/data/models/product_main_class_dtos.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/domain/entities/product_main_class.dart';
import 'package:fruit_market/features/home/domain/faliures/home_failure.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/network_info.dart';
import '../../domain/repositories/i_cart_repository.dart';
import '../datasources/cart_local_data_source.dart';
import '../datasources/cart_remote_data_source.dart';
import '../models/cart_item_dtos.dart';

@LazySingleton(as: ICartRepository)
class CartRepository implements ICartRepository {
  final CartLocalDataSource _cartLocalDataSourceImpl;
  final CartRemoteDataSource _cartRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  CartRepository(
    this._cartLocalDataSourceImpl,
    this._cartRemoteDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, Unit>> addToCart(CartItem cartItem) async {
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.addToCart(CartItemDTO.fromDomain(cartItem));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> clearCart() async {
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.clearCart();
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCart() async {
    List<CartItem> listCartItem = [];
    try {
      if (await _networkInfo.isConnected) {
        final listCartItemDTO = await _cartRemoteDataSourceImpl.getCart();
        for (var cartItem in listCartItemDTO) {
          listCartItem.add(cartItem.toDomain());
        }
        return right(listCartItem);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFromCart(CartItem cartItem) async {
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl
            .removeFromCart(CartItemDTO.fromDomain(cartItem));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
