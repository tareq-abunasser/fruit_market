import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/product.dart';
import '../repositories/i_product_repository.dart';

@LazySingleton()
class GetProducts {
  final IProductRepository _repository;

  GetProducts(this._repository);

  Future<Either<Failure, List<Product>>> call(
      {String? parentId, int? limit, String? lastProduct}) async {
    return await _repository.getProducts(
        parentId: parentId, limit: limit, lastProduct: lastProduct);
  }
}
