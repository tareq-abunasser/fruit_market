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

  _AddItemLoadInProgress addItemLoadInProgress() {
    return const _AddItemLoadInProgress();
  }

  _AddItemSuccess addItemSuccess() {
    return const _AddItemSuccess();
  }

  _AddItemFailure addItemFailure(Failure failure) {
    return _AddItemFailure(
      failure,
    );
  }

  _actionInProgress actionInProgress() {
    return const _actionInProgress();
  }

  _ActionSuccess actionSuccess(List<CartItem> cartItems) {
    return _ActionSuccess(
      cartItems,
    );
  }

  _ActionFailure actionFailure(Failure failure) {
    return _ActionFailure(
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
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
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
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
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
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
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
abstract class _$AddItemLoadInProgressCopyWith<$Res> {
  factory _$AddItemLoadInProgressCopyWith(_AddItemLoadInProgress value,
          $Res Function(_AddItemLoadInProgress) then) =
      __$AddItemLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddItemLoadInProgressCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddItemLoadInProgressCopyWith<$Res> {
  __$AddItemLoadInProgressCopyWithImpl(_AddItemLoadInProgress _value,
      $Res Function(_AddItemLoadInProgress) _then)
      : super(_value, (v) => _then(v as _AddItemLoadInProgress));

  @override
  _AddItemLoadInProgress get _value => super._value as _AddItemLoadInProgress;
}

/// @nodoc

class _$_AddItemLoadInProgress implements _AddItemLoadInProgress {
  const _$_AddItemLoadInProgress();

  @override
  String toString() {
    return 'CartActorState.addItemLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddItemLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return addItemLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return addItemLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemLoadInProgress != null) {
      return addItemLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return addItemLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return addItemLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemLoadInProgress != null) {
      return addItemLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _AddItemLoadInProgress implements CartActorState {
  const factory _AddItemLoadInProgress() = _$_AddItemLoadInProgress;
}

/// @nodoc
abstract class _$AddItemSuccessCopyWith<$Res> {
  factory _$AddItemSuccessCopyWith(
          _AddItemSuccess value, $Res Function(_AddItemSuccess) then) =
      __$AddItemSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddItemSuccessCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddItemSuccessCopyWith<$Res> {
  __$AddItemSuccessCopyWithImpl(
      _AddItemSuccess _value, $Res Function(_AddItemSuccess) _then)
      : super(_value, (v) => _then(v as _AddItemSuccess));

  @override
  _AddItemSuccess get _value => super._value as _AddItemSuccess;
}

/// @nodoc

class _$_AddItemSuccess implements _AddItemSuccess {
  const _$_AddItemSuccess();

  @override
  String toString() {
    return 'CartActorState.addItemSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddItemSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return addItemSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return addItemSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return addItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return addItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddItemSuccess implements CartActorState {
  const factory _AddItemSuccess() = _$_AddItemSuccess;
}

/// @nodoc
abstract class _$AddItemFailureCopyWith<$Res> {
  factory _$AddItemFailureCopyWith(
          _AddItemFailure value, $Res Function(_AddItemFailure) then) =
      __$AddItemFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$AddItemFailureCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$AddItemFailureCopyWith<$Res> {
  __$AddItemFailureCopyWithImpl(
      _AddItemFailure _value, $Res Function(_AddItemFailure) _then)
      : super(_value, (v) => _then(v as _AddItemFailure));

  @override
  _AddItemFailure get _value => super._value as _AddItemFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_AddItemFailure(
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

class _$_AddItemFailure implements _AddItemFailure {
  const _$_AddItemFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartActorState.addItemFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddItemFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$AddItemFailureCopyWith<_AddItemFailure> get copyWith =>
      __$AddItemFailureCopyWithImpl<_AddItemFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return addItemFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return addItemFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemFailure != null) {
      return addItemFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return addItemFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return addItemFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (addItemFailure != null) {
      return addItemFailure(this);
    }
    return orElse();
  }
}

abstract class _AddItemFailure implements CartActorState {
  const factory _AddItemFailure(Failure failure) = _$_AddItemFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$AddItemFailureCopyWith<_AddItemFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$actionInProgressCopyWith<$Res> {
  factory _$actionInProgressCopyWith(
          _actionInProgress value, $Res Function(_actionInProgress) then) =
      __$actionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$actionInProgressCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$actionInProgressCopyWith<$Res> {
  __$actionInProgressCopyWithImpl(
      _actionInProgress _value, $Res Function(_actionInProgress) _then)
      : super(_value, (v) => _then(v as _actionInProgress));

  @override
  _actionInProgress get _value => super._value as _actionInProgress;
}

/// @nodoc

class _$_actionInProgress implements _actionInProgress {
  const _$_actionInProgress();

  @override
  String toString() {
    return 'CartActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _actionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _actionInProgress implements CartActorState {
  const factory _actionInProgress() = _$_actionInProgress;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;

  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_ActionSuccess(
      cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess(this.cartItems);

  @override
  final List<CartItem> cartItems;

  @override
  String toString() {
    return 'CartActorState.actionSuccess(cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionSuccess &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cartItems));

  @JsonKey(ignore: true)
  @override
  _$ActionSuccessCopyWith<_ActionSuccess> get copyWith =>
      __$ActionSuccessCopyWithImpl<_ActionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return actionSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return actionSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements CartActorState {
  const factory _ActionSuccess(List<CartItem> cartItems) = _$_ActionSuccess;

  List<CartItem> get cartItems;
  @JsonKey(ignore: true)
  _$ActionSuccessCopyWith<_ActionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ActionFailureCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_ActionFailure(
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

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartActorState.actionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addItemLoadInProgress,
    required TResult Function() addItemSuccess,
    required TResult Function(Failure failure) addItemFailure,
    required TResult Function() actionInProgress,
    required TResult Function(List<CartItem> cartItems) actionSuccess,
    required TResult Function(Failure failure) actionFailure,
  }) {
    return actionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
  }) {
    return actionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addItemLoadInProgress,
    TResult Function()? addItemSuccess,
    TResult Function(Failure failure)? addItemFailure,
    TResult Function()? actionInProgress,
    TResult Function(List<CartItem> cartItems)? actionSuccess,
    TResult Function(Failure failure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddItemLoadInProgress value)
        addItemLoadInProgress,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_AddItemFailure value) addItemFailure,
    required TResult Function(_actionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddItemLoadInProgress value)? addItemLoadInProgress,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_AddItemFailure value)? addItemFailure,
    TResult Function(_actionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements CartActorState {
  const factory _ActionFailure(Failure failure) = _$_ActionFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
