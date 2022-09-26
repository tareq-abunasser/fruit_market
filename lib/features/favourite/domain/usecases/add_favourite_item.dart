import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/favourite_item.dart';
import '../repositories/i_favourite_repository.dart';

@LazySingleton()
class AddFavouriteItem {
  final IFavouriteRepository _repository;

  AddFavouriteItem(this._repository);

  Future<Either<Failure, Unit>> call(FavouriteItem item) async {
    return await _repository.addFavouriteItem(item);
  }

}

