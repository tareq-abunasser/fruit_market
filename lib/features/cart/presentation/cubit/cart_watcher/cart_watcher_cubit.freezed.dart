// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartWatcherStateTearOff {
  const _$CartWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CartItemLoadProgress cartItemLoadInProgress() {
    return const _CartItemLoadProgress();
  }

  _CartItemLoadSuccess cartItemLoadSuccess(
      List<CartItem> cartItems, double totalPrice) {
    return _CartItemLoadSuccess(
      cartItems,
      totalPrice,
    );
  }

  _CartItemLoadFailure cartItemLoadFailure(Failure failure) {
    return _CartItemLoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $CartWatcherState = _$CartWatcherStateTearOff();

/// @nodoc
mixin _$CartWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartItemLoadInProgress,
    required TResult Function(List<CartItem> cartItems, double totalPrice)
        cartItemLoadSuccess,
    required TResult Function(Failure failure) cartItemLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartItemLoadProgress value)
        cartItemLoadInProgress,
    required TResult Function(_CartItemLoadSuccess value) cartItemLoadSuccess,
    required TResult Function(_CartItemLoadFailure value) cartItemLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartWatcherStateCopyWith<$Res> {
  factory $CartWatcherStateCopyWith(
          CartWatcherState value, $Res Function(CartWatcherState) then) =
      _$CartWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartWatcherStateCopyWithImpl<$Res>
    implements $CartWatcherStateCopyWith<$Res> {
  _$CartWatcherStateCopyWithImpl(this._value, this._then);

  final CartWatcherState _value;
  // ignore: unused_field
  final $Res Function(CartWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CartWatcherStateCopyWithImpl<$Res>
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
    return 'CartWatcherState.initial()';
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
    required TResult Function() cartItemLoadInProgress,
    required TResult Function(List<CartItem> cartItems, double totalPrice)
        cartItemLoadSuccess,
    required TResult Function(Failure failure) cartItemLoadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
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
    required TResult Function(_CartItemLoadProgress value)
        cartItemLoadInProgress,
    required TResult Function(_CartItemLoadSuccess value) cartItemLoadSuccess,
    required TResult Function(_CartItemLoadFailure value) cartItemLoadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CartItemLoadProgressCopyWith<$Res> {
  factory _$CartItemLoadProgressCopyWith(_CartItemLoadProgress value,
          $Res Function(_CartItemLoadProgress) then) =
      __$CartItemLoadProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartItemLoadProgressCopyWithImpl<$Res>
    extends _$CartWatcherStateCopyWithImpl<$Res>
    implements _$CartItemLoadProgressCopyWith<$Res> {
  __$CartItemLoadProgressCopyWithImpl(
      _CartItemLoadProgress _value, $Res Function(_CartItemLoadProgress) _then)
      : super(_value, (v) => _then(v as _CartItemLoadProgress));

  @override
  _CartItemLoadProgress get _value => super._value as _CartItemLoadProgress;
}

/// @nodoc

class _$_CartItemLoadProgress implements _CartItemLoadProgress {
  const _$_CartItemLoadProgress();

  @override
  String toString() {
    return 'CartWatcherState.cartItemLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CartItemLoadProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartItemLoadInProgress,
    required TResult Function(List<CartItem> cartItems, double totalPrice)
        cartItemLoadSuccess,
    required TResult Function(Failure failure) cartItemLoadFailure,
  }) {
    return cartItemLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
  }) {
    return cartItemLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadInProgress != null) {
      return cartItemLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartItemLoadProgress value)
        cartItemLoadInProgress,
    required TResult Function(_CartItemLoadSuccess value) cartItemLoadSuccess,
    required TResult Function(_CartItemLoadFailure value) cartItemLoadFailure,
  }) {
    return cartItemLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
  }) {
    return cartItemLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadInProgress != null) {
      return cartItemLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _CartItemLoadProgress implements CartWatcherState {
  const factory _CartItemLoadProgress() = _$_CartItemLoadProgress;
}

/// @nodoc
abstract class _$CartItemLoadSuccessCopyWith<$Res> {
  factory _$CartItemLoadSuccessCopyWith(_CartItemLoadSuccess value,
          $Res Function(_CartItemLoadSuccess) then) =
      __$CartItemLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<CartItem> cartItems, double totalPrice});
}

/// @nodoc
class __$CartItemLoadSuccessCopyWithImpl<$Res>
    extends _$CartWatcherStateCopyWithImpl<$Res>
    implements _$CartItemLoadSuccessCopyWith<$Res> {
  __$CartItemLoadSuccessCopyWithImpl(
      _CartItemLoadSuccess _value, $Res Function(_CartItemLoadSuccess) _then)
      : super(_value, (v) => _then(v as _CartItemLoadSuccess));

  @override
  _CartItemLoadSuccess get _value => super._value as _CartItemLoadSuccess;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_CartItemLoadSuccess(
      cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CartItemLoadSuccess implements _CartItemLoadSuccess {
  const _$_CartItemLoadSuccess(this.cartItems, this.totalPrice);

  @override
  final List<CartItem> cartItems;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartWatcherState.cartItemLoadSuccess(cartItems: $cartItems, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemLoadSuccess &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartItems),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  _$CartItemLoadSuccessCopyWith<_CartItemLoadSuccess> get copyWith =>
      __$CartItemLoadSuccessCopyWithImpl<_CartItemLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartItemLoadInProgress,
    required TResult Function(List<CartItem> cartItems, double totalPrice)
        cartItemLoadSuccess,
    required TResult Function(Failure failure) cartItemLoadFailure,
  }) {
    return cartItemLoadSuccess(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
  }) {
    return cartItemLoadSuccess?.call(cartItems, totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadSuccess != null) {
      return cartItemLoadSuccess(cartItems, totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartItemLoadProgress value)
        cartItemLoadInProgress,
    required TResult Function(_CartItemLoadSuccess value) cartItemLoadSuccess,
    required TResult Function(_CartItemLoadFailure value) cartItemLoadFailure,
  }) {
    return cartItemLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
  }) {
    return cartItemLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadSuccess != null) {
      return cartItemLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CartItemLoadSuccess implements CartWatcherState {
  const factory _CartItemLoadSuccess(
      List<CartItem> cartItems, double totalPrice) = _$_CartItemLoadSuccess;

  List<CartItem> get cartItems;
  double get totalPrice;
  @JsonKey(ignore: true)
  _$CartItemLoadSuccessCopyWith<_CartItemLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CartItemLoadFailureCopyWith<$Res> {
  factory _$CartItemLoadFailureCopyWith(_CartItemLoadFailure value,
          $Res Function(_CartItemLoadFailure) then) =
      __$CartItemLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CartItemLoadFailureCopyWithImpl<$Res>
    extends _$CartWatcherStateCopyWithImpl<$Res>
    implements _$CartItemLoadFailureCopyWith<$Res> {
  __$CartItemLoadFailureCopyWithImpl(
      _CartItemLoadFailure _value, $Res Function(_CartItemLoadFailure) _then)
      : super(_value, (v) => _then(v as _CartItemLoadFailure));

  @override
  _CartItemLoadFailure get _value => super._value as _CartItemLoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CartItemLoadFailure(
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

class _$_CartItemLoadFailure implements _CartItemLoadFailure {
  const _$_CartItemLoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartWatcherState.cartItemLoadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemLoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$CartItemLoadFailureCopyWith<_CartItemLoadFailure> get copyWith =>
      __$CartItemLoadFailureCopyWithImpl<_CartItemLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartItemLoadInProgress,
    required TResult Function(List<CartItem> cartItems, double totalPrice)
        cartItemLoadSuccess,
    required TResult Function(Failure failure) cartItemLoadFailure,
  }) {
    return cartItemLoadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
  }) {
    return cartItemLoadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartItemLoadInProgress,
    TResult Function(List<CartItem> cartItems, double totalPrice)?
        cartItemLoadSuccess,
    TResult Function(Failure failure)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadFailure != null) {
      return cartItemLoadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CartItemLoadProgress value)
        cartItemLoadInProgress,
    required TResult Function(_CartItemLoadSuccess value) cartItemLoadSuccess,
    required TResult Function(_CartItemLoadFailure value) cartItemLoadFailure,
  }) {
    return cartItemLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
  }) {
    return cartItemLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CartItemLoadProgress value)? cartItemLoadInProgress,
    TResult Function(_CartItemLoadSuccess value)? cartItemLoadSuccess,
    TResult Function(_CartItemLoadFailure value)? cartItemLoadFailure,
    required TResult orElse(),
  }) {
    if (cartItemLoadFailure != null) {
      return cartItemLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _CartItemLoadFailure implements CartWatcherState {
  const factory _CartItemLoadFailure(Failure failure) = _$_CartItemLoadFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$CartItemLoadFailureCopyWith<_CartItemLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
