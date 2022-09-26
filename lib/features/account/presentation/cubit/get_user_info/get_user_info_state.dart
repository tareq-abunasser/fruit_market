part of 'get_user_info_cubit.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _Initial;
  const factory GetUserInfoState.getInfoLoadInProgress() = _GetInfoLoadInProgress;
  const factory GetUserInfoState.getInfoFailure(Failure failure) = _GetInfoFailure;
  const factory GetUserInfoState.getInfoSuccess(User user ) = _GetInfoSuccess;
  const factory GetUserInfoState.noInfo() = _NoInfo;

}
