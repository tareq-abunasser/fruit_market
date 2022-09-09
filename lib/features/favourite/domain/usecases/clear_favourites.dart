import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';
import '../repositories/i_favourite_repository.dart';

@LazySingleton()
class ClearFavourite {
  final IFavouriteRepository _repository;

  ClearFavourite(this._repository);

  Future<Either<Failure, Unit>> call() async {
    return await _repository.clearFavourites();
  }

}

