// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoginSuccess loginSuccess() {
    return const _LoginSuccess();
  }

  _loginFailure loginFailure(AuthFailure failure) {
    return _loginFailure(
      failure,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function(AuthFailure failure) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_loginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function(AuthFailure failure) loginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_loginFailure value) loginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoginSuccessCopyWith<$Res> {
  factory _$LoginSuccessCopyWith(
          _LoginSuccess value, $Res Function(_LoginSuccess) then) =
      __$LoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginSuccessCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$LoginSuccessCopyWith<$Res> {
  __$LoginSuccessCopyWithImpl(
      _LoginSuccess _value, $Res Function(_LoginSuccess) _then)
      : super(_value, (v) => _then(v as _LoginSuccess));

  @override
  _LoginSuccess get _value => super._value as _LoginSuccess;
}

/// @nodoc

class _$_LoginSuccess implements _LoginSuccess {
  const _$_LoginSuccess();

  @override
  String toString() {
    return 'SignInState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function(AuthFailure failure) loginFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_loginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements SignInState {
  const factory _LoginSuccess() = _$_LoginSuccess;
}

/// @nodoc
abstract class _$loginFailureCopyWith<$Res> {
  factory _$loginFailureCopyWith(
          _loginFailure value, $Res Function(_loginFailure) then) =
      __$loginFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$loginFailureCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$loginFailureCopyWith<$Res> {
  __$loginFailureCopyWithImpl(
      _loginFailure _value, $Res Function(_loginFailure) _then)
      : super(_value, (v) => _then(v as _loginFailure));

  @override
  _loginFailure get _value => super._value as _loginFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_loginFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_loginFailure implements _loginFailure {
  const _$_loginFailure(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'SignInState.loginFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _loginFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$loginFailureCopyWith<_loginFailure> get copyWith =>
      __$loginFailureCopyWithImpl<_loginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function(AuthFailure failure) loginFailure,
  }) {
    return loginFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
  }) {
    return loginFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function(AuthFailure failure)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_loginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_loginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _loginFailure implements SignInState {
  const factory _loginFailure(AuthFailure failure) = _$_loginFailure;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$loginFailureCopyWith<_loginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
