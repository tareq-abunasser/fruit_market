import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/favourite_item.dart';
import '../repositories/i_favourite_repository.dart';

@LazySingleton()
class GetFavouriteItems {
  final IFavouriteRepository _repository;

  GetFavouriteItems(this._repository);

  Future<Either<Failure, List<FavouriteItem>>> call() async {
    return await _repository.getFavouriteItems();
  }
}
