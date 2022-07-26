// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complete_info_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompleteInfoFormStateTearOff {
  const _$CompleteInfoFormStateTearOff();

  _CompleteInfoFormState call(
      {required UserInfo userInfo,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _CompleteInfoFormState(
      userInfo: userInfo,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CompleteInfoFormState = _$CompleteInfoFormStateTearOff();

/// @nodoc
mixin _$CompleteInfoFormState {
  UserInfo get userInfo => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteInfoFormStateCopyWith<CompleteInfoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteInfoFormStateCopyWith<$Res> {
  factory $CompleteInfoFormStateCopyWith(CompleteInfoFormState value,
          $Res Function(CompleteInfoFormState) then) =
      _$CompleteInfoFormStateCopyWithImpl<$Res>;
  $Res call(
      {UserInfo userInfo,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});

  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$CompleteInfoFormStateCopyWithImpl<$Res>
    implements $CompleteInfoFormStateCopyWith<$Res> {
  _$CompleteInfoFormStateCopyWithImpl(this._value, this._then);

  final CompleteInfoFormState _value;
  // ignore: unused_field
  final $Res Function(CompleteInfoFormState) _then;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get userInfo {
    return $UserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
abstract class _$CompleteInfoFormStateCopyWith<$Res>
    implements $CompleteInfoFormStateCopyWith<$Res> {
  factory _$CompleteInfoFormStateCopyWith(_CompleteInfoFormState value,
          $Res Function(_CompleteInfoFormState) then) =
      __$CompleteInfoFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserInfo userInfo,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});

  @override
  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$CompleteInfoFormStateCopyWithImpl<$Res>
    extends _$CompleteInfoFormStateCopyWithImpl<$Res>
    implements _$CompleteInfoFormStateCopyWith<$Res> {
  __$CompleteInfoFormStateCopyWithImpl(_CompleteInfoFormState _value,
      $Res Function(_CompleteInfoFormState) _then)
      : super(_value, (v) => _then(v as _CompleteInfoFormState));

  @override
  _CompleteInfoFormState get _value => super._value as _CompleteInfoFormState;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_CompleteInfoFormState(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CompleteInfoFormState implements _CompleteInfoFormState {
  const _$_CompleteInfoFormState(
      {required this.userInfo,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final UserInfo userInfo;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'CompleteInfoFormState(userInfo: $userInfo, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteInfoFormState &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userInfo),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$CompleteInfoFormStateCopyWith<_CompleteInfoFormState> get copyWith =>
      __$CompleteInfoFormStateCopyWithImpl<_CompleteInfoFormState>(
          this, _$identity);
}

abstract class _CompleteInfoFormState implements CompleteInfoFormState {
  const factory _CompleteInfoFormState(
      {required UserInfo userInfo,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_CompleteInfoFormState;

  @override
  UserInfo get userInfo;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$CompleteInfoFormStateCopyWith<_CompleteInfoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
