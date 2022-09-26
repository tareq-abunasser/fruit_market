part of 'favourite_actor_cubit.dart';

@freezed
class FavouriteActorState with _$FavouriteActorState {
  const factory FavouriteActorState.initial() = _Initial;
  const factory FavouriteActorState.actionInProgress() = _ActionInProgress;
  const factory FavouriteActorState.deleteFailure(Failure failure) =
  _DeleteFailure;
  const factory FavouriteActorState.deleteSuccess(int index) = _DeleteSuccess;
}
