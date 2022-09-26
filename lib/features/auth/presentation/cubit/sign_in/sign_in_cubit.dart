import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/failures/auth_failure.dart';
import '../../../domain/repositories/i_auth_repository.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final IAuthRepository _authRepository;

  SignInCubit(this._authRepository) : super(const SignInState.initial());

  static SignInCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  signInWithGoogle() async {
    final failureOrSuccess = await _authRepository.signInWithGoogle();
    failureOrSuccess.fold((failure) => emit(SignInState.loginFailure(failure)),
        (_) => emit(const SignInState.loginSuccess()));
  }

  signInWithFacebook() async {
    final failureOrSuccess = await _authRepository.signInWithFacebook();
    failureOrSuccess.fold((failure) => emit(SignInState.loginFailure(failure)),
        (_) => emit(const SignInState.loginSuccess()));
  }

}
