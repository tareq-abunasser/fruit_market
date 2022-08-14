// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_user_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetUserInfoStateTearOff {
  const _$GetUserInfoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _GetInfoLoadInProgress getInfoLoadInProgress() {
    return const _GetInfoLoadInProgress();
  }

  _GetInfoFailure getInfoFailure(Failure failure) {
    return _GetInfoFailure(
      failure,
    );
  }

  _GetInfoSuccess getInfoSuccess(User user) {
    return _GetInfoSuccess(
      user,
    );
  }

  _NoInfo noInfo() {
    return const _NoInfo();
  }
}

/// @nodoc
const $GetUserInfoState = _$GetUserInfoStateTearOff();

/// @nodoc
mixin _$GetUserInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserInfoStateCopyWith<$Res> {
  factory $GetUserInfoStateCopyWith(
          GetUserInfoState value, $Res Function(GetUserInfoState) then) =
      _$GetUserInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserInfoStateCopyWithImpl<$Res>
    implements $GetUserInfoStateCopyWith<$Res> {
  _$GetUserInfoStateCopyWithImpl(this._value, this._then);

  final GetUserInfoState _value;
  // ignore: unused_field
  final $Res Function(GetUserInfoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GetUserInfoStateCopyWithImpl<$Res>
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
    return 'GetUserInfoState.initial()';
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
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
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
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetUserInfoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GetInfoLoadInProgressCopyWith<$Res> {
  factory _$GetInfoLoadInProgressCopyWith(_GetInfoLoadInProgress value,
          $Res Function(_GetInfoLoadInProgress) then) =
      __$GetInfoLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetInfoLoadInProgressCopyWithImpl<$Res>
    extends _$GetUserInfoStateCopyWithImpl<$Res>
    implements _$GetInfoLoadInProgressCopyWith<$Res> {
  __$GetInfoLoadInProgressCopyWithImpl(_GetInfoLoadInProgress _value,
      $Res Function(_GetInfoLoadInProgress) _then)
      : super(_value, (v) => _then(v as _GetInfoLoadInProgress));

  @override
  _GetInfoLoadInProgress get _value => super._value as _GetInfoLoadInProgress;
}

/// @nodoc

class _$_GetInfoLoadInProgress implements _GetInfoLoadInProgress {
  const _$_GetInfoLoadInProgress();

  @override
  String toString() {
    return 'GetUserInfoState.getInfoLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetInfoLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) {
    return getInfoLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) {
    return getInfoLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoLoadInProgress != null) {
      return getInfoLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return getInfoLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return getInfoLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoLoadInProgress != null) {
      return getInfoLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetInfoLoadInProgress implements GetUserInfoState {
  const factory _GetInfoLoadInProgress() = _$_GetInfoLoadInProgress;
}

/// @nodoc
abstract class _$GetInfoFailureCopyWith<$Res> {
  factory _$GetInfoFailureCopyWith(
          _GetInfoFailure value, $Res Function(_GetInfoFailure) then) =
      __$GetInfoFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$GetInfoFailureCopyWithImpl<$Res>
    extends _$GetUserInfoStateCopyWithImpl<$Res>
    implements _$GetInfoFailureCopyWith<$Res> {
  __$GetInfoFailureCopyWithImpl(
      _GetInfoFailure _value, $Res Function(_GetInfoFailure) _then)
      : super(_value, (v) => _then(v as _GetInfoFailure));

  @override
  _GetInfoFailure get _value => super._value as _GetInfoFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_GetInfoFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_GetInfoFailure implements _GetInfoFailure {
  const _$_GetInfoFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetUserInfoState.getInfoFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetInfoFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$GetInfoFailureCopyWith<_GetInfoFailure> get copyWith =>
      __$GetInfoFailureCopyWithImpl<_GetInfoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) {
    return getInfoFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) {
    return getInfoFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoFailure != null) {
      return getInfoFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return getInfoFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return getInfoFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoFailure != null) {
      return getInfoFailure(this);
    }
    return orElse();
  }
}

abstract class _GetInfoFailure implements GetUserInfoState {
  const factory _GetInfoFailure(Failure failure) = _$_GetInfoFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$GetInfoFailureCopyWith<_GetInfoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetInfoSuccessCopyWith<$Res> {
  factory _$GetInfoSuccessCopyWith(
          _GetInfoSuccess value, $Res Function(_GetInfoSuccess) then) =
      __$GetInfoSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$GetInfoSuccessCopyWithImpl<$Res>
    extends _$GetUserInfoStateCopyWithImpl<$Res>
    implements _$GetInfoSuccessCopyWith<$Res> {
  __$GetInfoSuccessCopyWithImpl(
      _GetInfoSuccess _value, $Res Function(_GetInfoSuccess) _then)
      : super(_value, (v) => _then(v as _GetInfoSuccess));

  @override
  _GetInfoSuccess get _value => super._value as _GetInfoSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_GetInfoSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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

class _$_GetInfoSuccess implements _GetInfoSuccess {
  const _$_GetInfoSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'GetUserInfoState.getInfoSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetInfoSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$GetInfoSuccessCopyWith<_GetInfoSuccess> get copyWith =>
      __$GetInfoSuccessCopyWithImpl<_GetInfoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) {
    return getInfoSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) {
    return getInfoSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoSuccess != null) {
      return getInfoSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return getInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return getInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (getInfoSuccess != null) {
      return getInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetInfoSuccess implements GetUserInfoState {
  const factory _GetInfoSuccess(User user) = _$_GetInfoSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$GetInfoSuccessCopyWith<_GetInfoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoInfoCopyWith<$Res> {
  factory _$NoInfoCopyWith(_NoInfo value, $Res Function(_NoInfo) then) =
      __$NoInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInfoCopyWithImpl<$Res> extends _$GetUserInfoStateCopyWithImpl<$Res>
    implements _$NoInfoCopyWith<$Res> {
  __$NoInfoCopyWithImpl(_NoInfo _value, $Res Function(_NoInfo) _then)
      : super(_value, (v) => _then(v as _NoInfo));

  @override
  _NoInfo get _value => super._value as _NoInfo;
}

/// @nodoc

class _$_NoInfo implements _NoInfo {
  const _$_NoInfo();

  @override
  String toString() {
    return 'GetUserInfoState.noInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getInfoLoadInProgress,
    required TResult Function(Failure failure) getInfoFailure,
    required TResult Function(User user) getInfoSuccess,
    required TResult Function() noInfo,
  }) {
    return noInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
  }) {
    return noInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getInfoLoadInProgress,
    TResult Function(Failure failure)? getInfoFailure,
    TResult Function(User user)? getInfoSuccess,
    TResult Function()? noInfo,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetInfoLoadInProgress value)
        getInfoLoadInProgress,
    required TResult Function(_GetInfoFailure value) getInfoFailure,
    required TResult Function(_GetInfoSuccess value) getInfoSuccess,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return noInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return noInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetInfoLoadInProgress value)? getInfoLoadInProgress,
    TResult Function(_GetInfoFailure value)? getInfoFailure,
    TResult Function(_GetInfoSuccess value)? getInfoSuccess,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(this);
    }
    return orElse();
  }
}

abstract class _NoInfo implements GetUserInfoState {
  const factory _NoInfo() = _$_NoInfo;
}
