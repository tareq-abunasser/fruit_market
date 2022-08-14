import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    if (initialUser != null) {
      emit(state.copyWith(
        user: initialUser,
        isEditing: true,
      ));
    }
  }

  nameChanged(String name) {
    /// if name has error then we will can't able to pressed in login button
    /// this happen will the user write his name
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      user: state.user.copyWith(fullName: FullName(name)),

      /// We have to reset the authFailureOrSuccessOption field whenever we emit a new state.
      /// This field holds a "response" from the previous call to login using usecase.
      /// Surely, when the name changes, it's not correct to associate the old "auth response" with the updated name.
      authFailureOrSuccessOption: none(),
      showErrorMessages: false,

    ));
  }

  phoneChanged(String phone) {
    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state

    emit(state.copyWith(
      user: state.user.copyWith(phoneNumber: PhoneNumber(phone)),
      authFailureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  addressChanged(String address) {
    /// if password has error then we will can't able to pressed in sign in or register button

    /// this happen will the user write his password
    /// onChange method , any change in textFormField will emit the state
    emit(state.copyWith(
      user: state.user.copyWith(address: Address(address)),
      authFailureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  showErrorMessages() {
    emit(state.copyWith(
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    ));
  }

  hideErrorMessages() {
    emit(state.copyWith(
      showErrorMessages: false,
      authFailureOrSuccessOption: none(),
    ));
  }

  savedPressed() async {
    Either<Failure, Unit>? failureOrSuccess;
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    if (state.imageFile != null) {
      Either<Failure, Unit> failureOrSuccessUpload = await _uploadImageFile(
        state.imageFile!,
      );
      print("failureOrSuccessUpload: $failureOrSuccessUpload");
      if(failureOrSuccessUpload.isLeft()) {
        emit(state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccessUpload),
        ));
      }

      if (failureOrSuccessUpload.isRight()) {
        Either<Failure, String> failureOrSuccessGet = await _profileImageURL();
        print("failureOrSuccessGet: $failureOrSuccessUpload");

        if(failureOrSuccessGet.isLeft()) {
          emit(state.copyWith(
            authFailureOrSuccessOption: optionOf(failureOrSuccessGet),
          ));
        }

        if (failureOrSuccessGet.isRight()) {
          final imageURL = failureOrSuccessGet.getOrElse(() => '');
          emit(state.copyWith(
            // showErrorMessages: true,
            user: state.user.copyWith(imageURL: ImageURL(imageURL)),
          ));
        }
      }
    }
    print("ffffffff");

    print("state.user.failureOption: ${state.user.failureOption}");
    if (state.user.failureOption.isNone()) {
      UniqueId id = _signedInUser().fold((l) => UniqueId(), (r) => r.uniqueId);
      print("8777909709");
      print("id: $id");
      User _user = state.user.copyWith(id: id);
      print("_user: $_user");
      failureOrSuccess = state.isEditing
          ? await _updateUserInfo(_user)
          : await _addUserInfo(_user);
      print("failureOrSuccess: $failureOrSuccess");

      emit(state.copyWith(
        isSubmitting: false,
        /// failureOrSuccess may be null because it's value determinate in if statement
        /// if the condition not satisfied it will not enter if statement this will make it null
        /// optionOf is equivalent to:
        /// failureOrSuccess == null ? none() : some(failureOrSuccess)
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        // showErrorMessages: true,
      ));
    }

  }

  Future<void> uploadImage() async {
    if (state.imageFile != null) {
      Either<Failure, Unit> failureOrSuccessUpload = await _uploadImageFile(
        state.imageFile!,
      );
      // emit(state.copyWith(
      //   showErrorMessages: true,
      //   authFailureOrSuccessOption: optionOf(failureOrSuccessUpload),
      // ));

      if (failureOrSuccessUpload.isRight()) {
        Either<Failure, String> failureOrSuccessGet = await _profileImageURL();
        if (failureOrSuccessGet.isRight()) {
          final imageURL = failureOrSuccessGet.getOrElse(() => '');
          emit(state.copyWith(
            // showErrorMessages: true,
            user: state.user.copyWith(imageURL: ImageURL(imageURL)),
            // authFailureOrSuccessOption: optionOf(failureOrSuccessGet),
          ));
        }
      }
    }
  }

  void reset() {
    emit(UserFormState.initial());
  }

  imageChanged() async {
    // String imageUrl;
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      File imageFile = File(image.path);
      emit(state.copyWith(
        imageFile: imageFile,
      ));
      // String fileName = basename(imageFile.path);
    }


  }
}








// _uploadImageFile(imageFile);
// imageUrl = _getProfileImageURL().fold(
//   (f) => '',
//   (url) => url,
// );

// emit(state.copyWith(
//   user: state.user.copyWith(profileImageUrl: imageUrl),
//   authFailureOrSuccessOption: none(),
// ));
// FirebaseStorage storage = FirebaseStorage.instance;
// Reference ref =
// storage.ref().child("Image-" + productname.text);

// UploadTask uploadTask = ref.putFile(imageFile);
// await uploadTask.whenComplete(() async {
//   var url = await ref.getDownloadURL();
//   image_url = url.toString();
// }).catchError((onError) {
//   print(onError);
// });


// save() async {
//   Either<NoteFailure, Unit>? failureOrSuccess;
//
//   emit(state.copyWith(
//     isSubmitting: true,
//     saveFailureOrSuccessOption: none(),
//   ));
//   // await Future.delayed(Duration(seconds: 5));
//   if (state.note.failureOption.isNone()) {
//     failureOrSuccess = state.isEditing
//         ? await _iNoteRepository.update(state.note)
//         : await _iNoteRepository.create(state.note);
//   }
//   emit(state.copyWith(
//       isSubmitting: false,
//       showErrorMessages: true,
//       saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
// }