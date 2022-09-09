import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/product.dart';
import '../repositories/i_product_repository.dart';

@LazySingleton()
class SearchProducts {
  final IProductRepository _repository;

  SearchProducts(this._repository);

  Future<Either<Failure, List<Product>>> call(String textSearch) async {
    print("SearchProducts : function call ${textSearch}");
    return await _repository.searchProducts(textSearch);
  }
}
