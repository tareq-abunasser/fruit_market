import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/failures.dart';
import '../../../../../core/entities/value_objects.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/entities/value_objects.dart';
import '../../../domain/repositories/i_account_repository.dart';

part 'complete_info_form_state.dart';

part 'complete_info_form_cubit.freezed.dart';

@injectable
class CompleteInfoFormCubit extends Cubit<CompleteInfoFormState> {
  final IAccountRepository _repository;

  CompleteInfoFormCubit(this._repository)
      : super(CompleteInfoFormState.initial());

  static CompleteInfoFormCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  nameChanged(String name) {
    /// if name has error then we will can't able to pressed in login button
    /// this happen will the user write his name
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      userInfo: state.userInfo.copyWith(fullName: FullName(name)),
      /// We have to reset the authFailureOrSuccessOption field whenever we emit a new state.
      /// This field holds a "response" from the previous call to login using usecase.
      /// Surely, when the name changes, it's not correct to associate the old "auth response" with the updated name.
      authFailureOrSuccessOption: none(),
    ));
  }

  phoneChanged(String phone) {
    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state

    emit(state.copyWith(
      userInfo: state.userInfo.copyWith(phoneNumber: PhoneNumber(phone)),
      authFailureOrSuccessOption: none(),
    ));
  }

  addressChanged(String address) {
    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      userInfo: state.userInfo.copyWith(address: Address(address)),
      authFailureOrSuccessOption: none(),
    ));
  }

  showErrorMessages() {
    emit(state.copyWith(
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    ));
  }

  loginPressed() async {
    Either<Failure, Unit>? failureOrSuccess;
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    if(state.userInfo.failureOption.isNone()) {
      User user = _authRepository
          .getSignedInUser()
          .getOrElse(() => User(uniqueId: UniqueId()));
       failureOrSuccess = await _authRepository
          .completeUserInfo(state.userInfo.copyWith(user: user));
    }
    emit(state.copyWith(
      isSubmitting: false,
      /// failureOrSuccess may be null because it's value determinate in if statement
      /// if the condition not satisfied it will not enter if statement this will make it null
      /// optionOf is equivalent to:
      /// failureOrSuccess == null ? none() : some(failureOrSuccess)
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
