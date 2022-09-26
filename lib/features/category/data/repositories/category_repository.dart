import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/services/network_info_service.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';
import '../datasources/category_local_data_source.dart';
import '../datasources/category_remote_data_source.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final CategoryLocalDataSource _categoryLocalDataSourceImpl;
  final CategoryRemoteDataSource _categoryRemoteDataSourceImpl;
  final NetworkInfoService _networkInfo;

  CategoryRepository(
    this._categoryRemoteDataSourceImpl,
    this._categoryLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    Get.printInfo(info:'function : getCategories');
    List<Category> categories = [];

    try {
      if (await _networkInfo.isConnected) {
        final listCategoryDTO =
            await _categoryRemoteDataSourceImpl.getCategories();
        for (var productMainClass in listCategoryDTO) {
          categories.add(productMainClass.toDomain());
        }
        _categoryLocalDataSourceImpl.cacheCategories(listCategoryDTO);
        return right(categories);
      } else {
        final listCategoryDTO = _categoryLocalDataSourceImpl.getCategories();
        for (var productMainClass in listCategoryDTO) {
          categories.add(productMainClass.toDomain());
        }
        return right(categories);
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
