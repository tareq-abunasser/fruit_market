import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/subcategory.dart';
import '../repositories/i_subcategory_repository.dart';

@LazySingleton()
class GetSubcategories {
  final ISubcategoryRepository _repository;

  GetSubcategories(this._repository);

  Future<Either<Failure, List<Subcategory>>> call(
      {String? parentId, int? limit, String? lastSubcategoryId}) async {
    return await _repository.getSubcategories(
        parentId: parentId, limit: limit, lastSubcategoryId: lastSubcategoryId);
  }
}
