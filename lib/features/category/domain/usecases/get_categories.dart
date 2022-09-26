import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/category.dart';
import '../repositories/category_repository.dart';

@LazySingleton()
class GetCategories {
  final ICategoryRepository _repository;

  GetCategories(this._repository);

  Future<Either<Failure, List<Category>>> call() async {
    Get.printInfo(info:'function : GetCategories');
    return await _repository.getCategories();
  }
}
