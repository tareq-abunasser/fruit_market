// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

  _UserState call(
      {required User user,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      File? imageFile,
      required Option<Either<Failure, dynamic>> userFailureOrSuccessOption}) {
    return _UserState(
      user: user,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      imageFile: imageFile,
      userFailureOrSuccessOption: userFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  User get user => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;
  Option<Either<Failure, dynamic>> get userFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      File? imageFile,
      Option<Either<Failure, dynamic>> userFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? imageFile = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      File? imageFile,
      Option<Either<Failure, dynamic>> userFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? user = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? imageFile = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.user,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      this.imageFile,
      required this.userFailureOrSuccessOption});

  @override
  final User user;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final File? imageFile;
  @override
  final Option<Either<Failure, dynamic>> userFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, imageFile: $imageFile, userFailureOrSuccessOption: $userFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile) &&
            const DeepCollectionEquality().equals(
                other.userFailureOrSuccessOption, userFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(imageFile),
      const DeepCollectionEquality().hash(userFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserFormState {
  const factory _UserState(
      {required User user,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      File? imageFile,
      required Option<Either<Failure, dynamic>>
          userFailureOrSuccessOption}) = _$_UserState;

  @override
  User get user;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSubmitting;
  @override
  File? get imageFile;
  @override
  Option<Either<Failure, dynamic>> get userFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
