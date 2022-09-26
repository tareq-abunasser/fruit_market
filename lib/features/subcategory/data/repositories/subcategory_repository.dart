import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/services/network_info_service.dart';
import '../../domain/entities/subcategory.dart';
import '../../domain/repositories/i_subcategory_repository.dart';
import '../datasources/subcategory_local_data_source.dart';
import '../datasources/subcategory_remote_data_source.dart';

@LazySingleton(as: ISubcategoryRepository)
class SubcategoryRepository implements ISubcategoryRepository {
  final SubcategoryLocalDataSource _subcategoryLocalDataSourceImpl;
  final SubcategoryRemoteDataSource _subcategoryRemoteDataSourceImpl;
  final NetworkInfoService _networkInfo;

  SubcategoryRepository(
    this._subcategoryRemoteDataSourceImpl,
    this._subcategoryLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, List<Subcategory>>> getSubcategories(
      {String? parentId, int? limit, String? lastSubcategoryId}) async {
    printInfo(info: 'function : getSubcategories');
    List<Subcategory> listSubcategory = [];

    try {
      if (await _networkInfo.isConnected) {
        final listSubcategoryDTO =
            await _subcategoryRemoteDataSourceImpl.getSubcategories(
                parentId: parentId!,
                limit: limit,
                lastSubcategoryId: lastSubcategoryId);
        for (var subcategory in listSubcategoryDTO) {
          listSubcategory.add(subcategory.toDomain());
        }
        _subcategoryLocalDataSourceImpl.cacheSubcategories(listSubcategoryDTO);
        return right(listSubcategory);
      } else {
        if (lastSubcategoryId == null) {
          final listSubcategoryDTO = _subcategoryLocalDataSourceImpl
              .getSubcategories(parentId: parentId!);
          for (var subcategory in listSubcategoryDTO) {
            listSubcategory.add(subcategory.toDomain());
          }
          return right(listSubcategory);
        }
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
