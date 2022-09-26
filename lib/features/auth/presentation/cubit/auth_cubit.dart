import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/failures/auth_failure.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(const AuthState.initial());

  static AuthCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  authCheckRequested() {
    var userOrFailure = _authRepository.getSignedInUser();
    userOrFailure.fold((_) => emit(const AuthState.unauthenticated()),
        (_) => emit(const AuthState.authenticated()));
  }

  signedOut() async {
    await _authRepository.signOut();
    emit(const AuthState.unauthenticated());
  }
}
