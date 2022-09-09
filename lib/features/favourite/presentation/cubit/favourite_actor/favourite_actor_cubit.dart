import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/entities/favourite_item.dart';
import '../../../domain/usecases/add_item_to_cart.dart';
import '../../../domain/usecases/delete_favourite_item.dart';

part 'favourite_actor_state.dart';

part 'favourite_actor_cubit.freezed.dart';

@injectable
class FavouriteActorCubit extends Cubit<FavouriteActorState> {
  FavouriteActorCubit(this._deleteFavouriteItem, this._addItemToCart)
      : super(const FavouriteActorState.initial());
  final DeleteFavouriteItem _deleteFavouriteItem;
  final AddItemToCart _addItemToCart;

  void deleteFavoriteItem(FavouriteItem item, int index) {
    emit(const FavouriteActorState.actionInProgress());
    _deleteFavouriteItem(item).then((failureOrProducts) => failureOrProducts
            .fold((f) => emit(FavouriteActorState.deleteFailure(f)), (_) {
          _addItemToCart(item, 1).then((failureOrProducts) => failureOrProducts
                  .fold((f) => emit(FavouriteActorState.deleteFailure(f)), (_) {
                emit(FavouriteActorState.deleteSuccess(index));
              }));
        }));
  }
}
