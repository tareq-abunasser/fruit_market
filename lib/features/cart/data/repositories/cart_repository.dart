import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/services/network_info.dart';
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
    printInfo(info: 'function : addToCart');
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
    printInfo(info: 'function : clearCart');
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.clearCart();
        _cartLocalDataSourceImpl.clearCart();
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCart() async {
    printInfo(info: 'function : getCart');
    List<CartItem> listCartItem = [];
    List<CartItemDTO> listCartItemDTO = [];
    try {
      if (await _networkInfo.isConnected) {
        listCartItemDTO = await _cartRemoteDataSourceImpl.getCart();
        _cartLocalDataSourceImpl.cacheCart(listCartItemDTO);
      } else {
        listCartItemDTO = _cartLocalDataSourceImpl.getCart();
      }
      for (var cartItem in listCartItemDTO) {
        listCartItem.add(cartItem.toDomain());
      }
      return right(listCartItem);
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFromCart(CartItem cartItem) async {
    printInfo(info: 'function : removeFromCart');
    final CartItemDTO cartItemDTO = CartItemDTO.fromDomain(cartItem);
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.removeFromCart(cartItemDTO);
        _cartLocalDataSourceImpl.removeFromCart(cartItemDTO);
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCart(List<CartItem> cartItems) async {
    printInfo(info: 'function : updateCart');
    final List<CartItemDTO> cartItemDTOs = [];
    for (var cartItem in cartItems) {
      cartItemDTOs.add(CartItemDTO.fromDomain(cartItem));
    }
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.updateCart(cartItemDTOs);
        _cartLocalDataSourceImpl.updateCart(cartItemDTOs);
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCartItem(CartItem cartItem) async {
    printInfo(info: 'function : updateCartItem');
    final CartItemDTO cartItemDTO = CartItemDTO.fromDomain(cartItem);
    try {
      if (await _networkInfo.isConnected) {
        _cartRemoteDataSourceImpl.updateCartItem(cartItemDTO);
        _cartLocalDataSourceImpl.updateCartItem(cartItemDTO);
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }
}
