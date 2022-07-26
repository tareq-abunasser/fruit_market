part of 'get_user_info_cubit.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _Initial;
  const factory GetUserInfoState.getInfoFailure(AuthFailure failure) = _GetInfoFailure;
  const factory GetUserInfoState.getInfoSuccess(UserInfo userInfo ) = _GetInfoSuccess;
  const factory GetUserInfoState.noInfo() = _NoInfo;

}
