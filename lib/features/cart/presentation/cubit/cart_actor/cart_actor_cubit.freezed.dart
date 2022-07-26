// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartActorStateTearOff {
  const _$CartActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AddToCartLoadInProgress addToCartLoadInProgress() {
    return const _AddToCartLoadInProgress();
  }

  _AddToCartSuccess addToCartSuccess() {
    return const _AddToCartSuccess();
  }

  _AddToCartFailure addToCartFailure(Failure failure) {
    return _AddToCartFailure(
      failure,
    );
  }
}

/// @nodoc
const $CartActorState = _$CartActorStateTearOff();

/// @nodoc
mixin _$CartActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoadInProgress,
    required TResult Function() addToCartSuccess,
    required TResult Function(Failure failure) addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartLoadInProgress value)
        addToCartLoadInProgress,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_AddToCartFailure value) addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartActorStateCopyWith<$Res> {
  factory $CartActorStateCopyWith(
          CartActorState value, $Res Function(CartActorState) then) =
      _$CartActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartActorStateCopyWithImpl<$Res>
    implements $CartActorStateCopyWith<$Res> {
  _$CartActorStateCopyWithImpl(this._value, this._then);

  final CartActorState _value;
  // ignore: unused_field
  final $Res Function(CartActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CartActorStateCopyWithImpl<$Res>
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
    return 'CartActorState.initial()';
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
    required TResult Function() addToCartLoadInProgress,
    required TResult Function() addToCartSuccess,
    required TResult Function(Failure failure) addToCartFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
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
    required TResult Function(_AddToCartLoadInProgress value)
        addToCartLoadInProgress,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_AddToCartFailure value) addToCartFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddToCartLoadInProgressCopyWith<$Res> {
  factory _$AddToCartLoadInProgressCopyWith(_AddToCartLoadInProgress value,
          $Res Function(_AddToCartLoadInProgress) then) =
      __$AddToCartLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddToCartLoadInProgressCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddToCartLoadInProgressCopyWith<$Res> {
  __$AddToCartLoadInProgressCopyWithImpl(_AddToCartLoadInProgress _value,
      $Res Function(_AddToCartLoadInProgress) _then)
      : super(_value, (v) => _then(v as _AddToCartLoadInProgress));

  @override
  _AddToCartLoadInProgress get _value =>
      super._value as _AddToCartLoadInProgress;
}

/// @nodoc

class _$_AddToCartLoadInProgress implements _AddToCartLoadInProgress {
  const _$_AddToCartLoadInProgress();

  @override
  String toString() {
    return 'CartActorState.addToCartLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddToCartLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoadInProgress,
    required TResult Function() addToCartSuccess,
    required TResult Function(Failure failure) addToCartFailure,
  }) {
    return addToCartLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
  }) {
    return addToCartLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartLoadInProgress != null) {
      return addToCartLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartLoadInProgress value)
        addToCartLoadInProgress,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_AddToCartFailure value) addToCartFailure,
  }) {
    return addToCartLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
  }) {
    return addToCartLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartLoadInProgress != null) {
      return addToCartLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _AddToCartLoadInProgress implements CartActorState {
  const factory _AddToCartLoadInProgress() = _$_AddToCartLoadInProgress;
}

/// @nodoc
abstract class _$AddToCartSuccessCopyWith<$Res> {
  factory _$AddToCartSuccessCopyWith(
          _AddToCartSuccess value, $Res Function(_AddToCartSuccess) then) =
      __$AddToCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddToCartSuccessCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddToCartSuccessCopyWith<$Res> {
  __$AddToCartSuccessCopyWithImpl(
      _AddToCartSuccess _value, $Res Function(_AddToCartSuccess) _then)
      : super(_value, (v) => _then(v as _AddToCartSuccess));

  @override
  _AddToCartSuccess get _value => super._value as _AddToCartSuccess;
}

/// @nodoc

class _$_AddToCartSuccess implements _AddToCartSuccess {
  const _$_AddToCartSuccess();

  @override
  String toString() {
    return 'CartActorState.addToCartSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddToCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoadInProgress,
    required TResult Function() addToCartSuccess,
    required TResult Function(Failure failure) addToCartFailure,
  }) {
    return addToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
  }) {
    return addToCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartLoadInProgress value)
        addToCartLoadInProgress,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_AddToCartFailure value) addToCartFailure,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
  }) {
    return addToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddToCartSuccess implements CartActorState {
  const factory _AddToCartSuccess() = _$_AddToCartSuccess;
}

/// @nodoc
abstract class _$AddToCartFailureCopyWith<$Res> {
  factory _$AddToCartFailureCopyWith(
          _AddToCartFailure value, $Res Function(_AddToCartFailure) then) =
      __$AddToCartFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AddToCartFailureCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddToCartFailureCopyWith<$Res> {
  __$AddToCartFailureCopyWithImpl(
      _AddToCartFailure _value, $Res Function(_AddToCartFailure) _then)
      : super(_value, (v) => _then(v as _AddToCartFailure));

  @override
  _AddToCartFailure get _value => super._value as _AddToCartFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_AddToCartFailure(
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

class _$_AddToCartFailure implements _AddToCartFailure {
  const _$_AddToCartFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartActorState.addToCartFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToCartFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$AddToCartFailureCopyWith<_AddToCartFailure> get copyWith =>
      __$AddToCartFailureCopyWithImpl<_AddToCartFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addToCartLoadInProgress,
    required TResult Function() addToCartSuccess,
    required TResult Function(Failure failure) addToCartFailure,
  }) {
    return addToCartFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
  }) {
    return addToCartFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addToCartLoadInProgress,
    TResult Function()? addToCartSuccess,
    TResult Function(Failure failure)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartFailure != null) {
      return addToCartFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartLoadInProgress value)
        addToCartLoadInProgress,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_AddToCartFailure value) addToCartFailure,
  }) {
    return addToCartFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
  }) {
    return addToCartFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartLoadInProgress value)? addToCartLoadInProgress,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_AddToCartFailure value)? addToCartFailure,
    required TResult orElse(),
  }) {
    if (addToCartFailure != null) {
      return addToCartFailure(this);
    }
    return orElse();
  }
}

abstract class _AddToCartFailure implements CartActorState {
  const factory _AddToCartFailure(Failure failure) = _$_AddToCartFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$AddToCartFailureCopyWith<_AddToCartFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
