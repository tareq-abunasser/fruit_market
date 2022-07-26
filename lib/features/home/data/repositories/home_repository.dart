import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/home/data/models/product_dtos.dart';
import 'package:fruit_market/features/home/data/models/product_main_class_dtos.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/domain/entities/product_main_class.dart';
import 'package:fruit_market/features/home/domain/faliures/home_failure.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/network_info.dart';
import '../../domain/entities/product_subclass.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/home_local_data_source.dart';
import '../datasources/home_remote_data_source.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final HomeLocalDataSource _authLocalDataSourceImpl;
  final HomeRemoteDataSource _authRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  HomeRepository(
    this._authRemoteDataSourceImpl,
    this._authLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<HomeFailure, List<ProductSubclass>>> getProductSubclasses(
      {String? parentId, int? limit, String? lastProductSubClassId}) async {
    List<ProductSubclass> listProductSubclass = [];

    try {
      if (await _networkInfo.isConnected) {
        final listProductSubclassDTO =
            await _authRemoteDataSourceImpl.getProductSubclasses(
                parentId: parentId!,
                limit: limit,
                lastProductSubClassId: lastProductSubClassId);
        for (var productSubclass in listProductSubclassDTO) {
          listProductSubclass.add(productSubclass.toDomain());
        }
        _authLocalDataSourceImpl.cacheProductSubclasses(listProductSubclassDTO);
        return right(listProductSubclass);
      } else {
        // print("lastProductSubClassId");
        // print(lastProductSubClassId);
        if (lastProductSubClassId == null) {
          final listProductSubclassDTO =
              _authLocalDataSourceImpl.getProductSubclasses();
          for (var productSubclass in listProductSubclassDTO) {
            listProductSubclass.add(productSubclass.toDomain());
          }
          return right(listProductSubclass);
        }
        return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, List<ProductMainClass>>>
      getProductMainClasses() async {
    List<ProductMainClass> listProductMainClass = [];

    try {
      if (await _networkInfo.isConnected) {
        final listProductMainClassDTO =
            await _authRemoteDataSourceImpl.getProductMainClasses();
        for (var productMainClass in listProductMainClassDTO) {
          listProductMainClass.add(productMainClass.toDomain());
        }
        _authLocalDataSourceImpl
            .cacheProductMainClasses(listProductMainClassDTO);
        return right(listProductMainClass);
      } else {
        final listProductMainClassDTO =
            _authLocalDataSourceImpl.getProductMainClasses();
        // print("getProductMainClasses 1");
        // print(listProductMainClassDTO);
        for (var productMainClass in listProductMainClassDTO) {
          listProductMainClass.add(productMainClass.toDomain());
        }
        return right(listProductMainClass);
        // return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, List<Product>>> getProducts(
      {String? parentId, int? limit, String? lastProduct}) async {
    List<Product> listProduct = [];
    try {
      if (await _networkInfo.isConnected) {
        final listProductDTO = await _authRemoteDataSourceImpl.getProducts(
            parentId: parentId!, limit: limit, lastProduct: lastProduct);
        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        _authLocalDataSourceImpl.cacheProducts(listProductDTO);
        return right(listProduct);
      } else {
        // print("lastProduct");
        // print(lastProduct);
        if (lastProduct == null) {
          final listProductDTO = await _authRemoteDataSourceImpl.getProducts(
              parentId: parentId!, limit: limit, lastProduct: lastProduct);
          for (var product in listProductDTO) {
            listProduct.add(product.toDomain());
          }
          return right(listProduct);
        }
        return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, Unit>> updateFavoriteProduct(
      Product product) async {
    try {
      if (await _networkInfo.isConnected) {
        _authRemoteDataSourceImpl
            .updateFavoriteProduct(ProductDTO.fromDomain(product));
        _authLocalDataSourceImpl
            .updateFavoriteProduct(ProductDTO.fromDomain(product));
        return right(unit);
      } else {
        return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, List<Product>>> getFavouriteProducts() async {
    List<Product> listProduct = [];
    try {
      if (await _networkInfo.isConnected) {
        final listProductDTO =
            await _authRemoteDataSourceImpl.getFavoriteProducts();

        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        _authLocalDataSourceImpl.cacheFavoriteProducts(listProductDTO);
        return right(listProduct);
      } else {
        final listProductDTO =
             _authLocalDataSourceImpl.getFavoriteProducts();
        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        return right(listProduct);
        // return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, List<Product>>> getCart() async{
    List<Product> listProduct = [];
    try {
      if (await _networkInfo.isConnected) {
        final listProductDTO =
            await _authRemoteDataSourceImpl.getCart();

        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        _authLocalDataSourceImpl.cacheCart(listProductDTO);
        return right(listProduct);
      } else {
        final listProductDTO =
             _authLocalDataSourceImpl.getCart();
        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        return right(listProduct);
        // return left(const HomeFailure.internet());
      }
    } on ServerException {
      return left(const HomeFailure.serverError());
    }
  }
}
