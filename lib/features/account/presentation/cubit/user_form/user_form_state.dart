part of 'user_form_cubit.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required User user,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    File? imageFile,
    required Option<Either<Failure, dynamic>> userFailureOrSuccessOption,
  }) = _UserState;

  factory UserFormState.initial() => UserFormState(
        user: User.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSubmitting: false,
        imageFile: null,
        userFailureOrSuccessOption: none(),
      );
}

///What do we need to communicate back to the UI of the sign-in form?
///
/// 1. Validated values
///
/// We surely want to pass back the validated FullName ,PhoneNumber and Address value objects
/// to be able to show error messages in the TextFormFields.
///
/// 2. Auth progress
///
/// Showing a progress indicator is a no-brainer, so we have to also pass back a bool isSubmitting.
///
/// 3. Success or error backend response
///
/// To show an error Snackbar when something goes wrong in the backend,
/// we will need to pass back the Either<AuthFailure, Unit> returned from the usecases.
/// We're going to call it authFailureOrSuccess and you can think of it as of the auth backend "response".
///
/// However, there will initially be no response until the user presses a button.
/// We could just initially assign null to the authFailureOrSuccess field but you know that this sucks.
///
/// A much better option would be to use an Option 🙃.
/// Much like Either, it's a union of two values - Some and None.
/// It's a sort of a non-nullable type where null gets replaced by the None union case.
/// Only the Some union case holds a value which will be the Either<AuthFailure, Unit>.
///
///
///4. Whether or not to show input error messages
///
/// Lastly, we want to show the input validation error messages under the TextFormFields
/// only after the first press of a login button.
/// This will be communicated back to the UI inside a bool showErrorMessages.
/// means when put it true the error messages will appeared
