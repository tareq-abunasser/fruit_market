part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loginSuccess() = _LoginSuccess;
  const factory SignInState.loginFailure(AuthFailure failure) = _loginFailure;


}
