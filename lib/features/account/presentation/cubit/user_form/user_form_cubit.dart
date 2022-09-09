import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/failures.dart';
import '../../../../../core/entities/value_objects.dart';
import '../../../../auth/domain/usecases/get_signed_in_user.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/entities/value_objects.dart';
import '../../../domain/repositories/i_account_repository.dart';
import '../../../domain/usecases/add_user_info.dart';
import '../../../domain/usecases/get_profile_image_url.dart';
import '../../../domain/usecases/update_user_info.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../../../domain/usecases/upload_image_file.dart';

part 'user_form_state.dart';

part 'user_form_cubit.freezed.dart';

@injectable
class UserFormCubit extends Cubit<UserFormState> {
  final AddUserInfo _addUserInfo;
  final UpdateUserInfo _updateUserInfo;
  final GetProfileImageURL _profileImageURL;
  final UploadImageFile _uploadImageFile;
  final GetSignedInUser _signedInUser;

  UserFormCubit(
    this._addUserInfo,
    this._updateUserInfo,
    this._profileImageURL,
    this._uploadImageFile,
    this._signedInUser,
  ) : super(UserFormState.initial());

  static UserFormCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  initialized({User? initialUser}) {
    printInfo(info: 'function initialized');
    if (initialUser != null) {
      emit(state.copyWith(
        user: initialUser,
        isEditing: true,
      ));
    }
  }

  nameChanged(String name) {
    printInfo(info: 'function nameChanged');

    /// if name has error then we will can't able to pressed in login button
    /// this happen will the user write his name
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      user: state.user.copyWith(fullName: FullName(name)),

      /// We have to reset the userFailureOrSuccessOption field whenever we emit a new state.
      /// This field holds a "response" from the previous call to login using usecase.
      /// Surely, when the name changes, it's not correct to associate the old "auth response" with the updated name.
      userFailureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  phoneChanged(String phone) {
    printInfo(info: 'function phoneChanged');

    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state

    emit(state.copyWith(
      user: state.user.copyWith(phoneNumber: PhoneNumber(phone)),
      userFailureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  addressChanged(String address) {
    printInfo(info: 'function addressChanged');

    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      user: state.user.copyWith(address: Address(address)),
      userFailureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  showErrorMessages() {
    printInfo(info: 'function showErrorMessages');
    emit(state.copyWith(
      showErrorMessages: true,
      userFailureOrSuccessOption: none(),
    ));
  }

  hideErrorMessages() {
    printInfo(info: 'function hideErrorMessages');
    emit(state.copyWith(
      showErrorMessages: false,
      userFailureOrSuccessOption: none(),
    ));
  }

  savedPressed() async {
    printInfo(info: 'function savedPressed');
    Either<Failure, Unit>? failureOrSuccess;
    emit(state.copyWith(
      isSubmitting: true,
      userFailureOrSuccessOption: none(),
    ));

    if (state.imageFile != null) {
      await uploadImage();
    }

    if (state.user.failureOption.isNone()) {
      UniqueId id = _signedInUser().fold((l) => UniqueId(), (r) => r.uniqueId);
      User _user = state.user.copyWith(id: id);
      failureOrSuccess = state.isEditing
          ? await _updateUserInfo(_user)
          : await _addUserInfo(_user);
      printInfo(
          info: 'function savedPressed failureOrSuccess $failureOrSuccess');
      emit(state.copyWith(
        isSubmitting: false,

        /// failureOrSuccess may be null because it's value determinate in if statement
        /// if the condition not satisfied it will not enter if statement this will make it null
        /// optionOf is equivalent to:
        /// failureOrSuccess == null ? none() : some(failureOrSuccess)
        userFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    } else {
      printError(info: "user model has error");
    }
  }

  Future<void> uploadImage() async {
    printInfo(info: 'function uploadImage');
    Either<Failure, Unit> failureOrSuccessUpload = await _uploadImageFile(
      state.imageFile!,
    );
    printInfo(
        info:
            'function uploadImage failureOrSuccessUpload $failureOrSuccessUpload');
    if (failureOrSuccessUpload.isLeft()) {
      emit(state.copyWith(
        userFailureOrSuccessOption: optionOf(failureOrSuccessUpload),
      ));
    }

    if (failureOrSuccessUpload.isRight()) {
      await getImageURL();
    }
  }

  Future<void> getImageURL() async {
    printInfo(info: 'function getImageURL');
    Either<Failure, String> failureOrSuccessGet = await _profileImageURL();
    printInfo(
        info: 'function getImageURL failureOrSuccessGet $failureOrSuccessGet');
    if (failureOrSuccessGet.isLeft()) {
      emit(state.copyWith(
        userFailureOrSuccessOption: optionOf(failureOrSuccessGet),
      ));
    }

    if (failureOrSuccessGet.isRight()) {
      final imageURL = failureOrSuccessGet.getOrElse(() => '');
      emit(state.copyWith(
        user: state.user.copyWith(imageURL: ImageURL(imageURL)),
      ));
    }
  }

  void reset() {
    printInfo(info: 'function reset');
    emit(UserFormState.initial());
  }

  imageChanged() async {
    printInfo(info: 'function imageChanged');
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      File imageFile = File(image.path);
      emit(state.copyWith(
        imageFile: imageFile,
      ));
    }
  }
}
