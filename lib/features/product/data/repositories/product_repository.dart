import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/services/network_info.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/i_product_repository.dart';
import '../datasources/product_local_data_source.dart';
import '../datasources/product_remote_data_source.dart';
import '../models/product_dtos.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final ProductLocalDataSource _authLocalDataSourceImpl;
  final ProductRemoteDataSource _authRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  ProductRepository(
    this._authRemoteDataSourceImpl,
    this._authLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, List<Product>>> getProducts(
      {String? parentId, int? limit, String? lastProduct}) async {
    Get.printInfo(info: "function getProducts");
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
        if (lastProduct == null) {
          final listProductDTO = await _authRemoteDataSourceImpl.getProducts(
              parentId: parentId!, limit: limit, lastProduct: lastProduct);
          for (var product in listProductDTO) {
            listProduct.add(product.toDomain());
          }
          return right(listProduct);
        }
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateFavoriteProduct(Product product) async {
    Get.printInfo(info: "function updateFavoriteProduct");
    try {
      if (await _networkInfo.isConnected) {
        _authRemoteDataSourceImpl
            .updateFavoriteProduct(ProductDTO.fromDomain(product));
        _authLocalDataSourceImpl
            .updateFavoriteProduct(ProductDTO.fromDomain(product));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> searchProducts(
      String searchText) async {
    Get.printInfo(info: "function searchProducts");
    print("ProductRepository : function call ${searchText}");

    List<Product> listProduct = [];
    try {
      if (await _networkInfo.isConnected) {
        final listProductDTO =
            await _authRemoteDataSourceImpl.searchProducts(searchText);
        for (var product in listProductDTO) {
          listProduct.add(product.toDomain());
        }
        return right(listProduct);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
