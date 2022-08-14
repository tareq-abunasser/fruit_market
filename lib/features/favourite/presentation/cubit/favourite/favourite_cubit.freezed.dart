// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteStateTearOff {
  const _$FavouriteStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FavouriteItemsLoadProgress favouriteItemsLoadInProgress() {
    return const _FavouriteItemsLoadProgress();
  }

  _FavouriteItemsLoadSuccess favouriteItemsLoadSuccess(
      List<FavouriteItem> products) {
    return _FavouriteItemsLoadSuccess(
      products,
    );
  }

  _FavouriteItemsLoadFailure favouriteItemsLoadFailure(Failure homeFailure) {
    return _FavouriteItemsLoadFailure(
      homeFailure,
    );
  }
}

/// @nodoc
const $FavouriteState = _$FavouriteStateTearOff();

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favouriteItemsLoadInProgress,
    required TResult Function(List<FavouriteItem> products)
        favouriteItemsLoadSuccess,
    required TResult Function(Failure homeFailure) favouriteItemsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavouriteItemsLoadProgress value)
        favouriteItemsLoadInProgress,
    required TResult Function(_FavouriteItemsLoadSuccess value)
        favouriteItemsLoadSuccess,
    required TResult Function(_FavouriteItemsLoadFailure value)
        favouriteItemsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  final FavouriteState _value;
  // ignore: unused_field
  final $Res Function(FavouriteState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FavouriteStateCopyWithImpl<$Res>
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
    return 'FavouriteState.initial()';
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
    required TResult Function() favouriteItemsLoadInProgress,
    required TResult Function(List<FavouriteItem> products)
        favouriteItemsLoadSuccess,
    required TResult Function(Failure homeFailure) favouriteItemsLoadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
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
    required TResult Function(_FavouriteItemsLoadProgress value)
        favouriteItemsLoadInProgress,
    required TResult Function(_FavouriteItemsLoadSuccess value)
        favouriteItemsLoadSuccess,
    required TResult Function(_FavouriteItemsLoadFailure value)
        favouriteItemsLoadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouriteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FavouriteItemsLoadProgressCopyWith<$Res> {
  factory _$FavouriteItemsLoadProgressCopyWith(
          _FavouriteItemsLoadProgress value,
          $Res Function(_FavouriteItemsLoadProgress) then) =
      __$FavouriteItemsLoadProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavouriteItemsLoadProgressCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteItemsLoadProgressCopyWith<$Res> {
  __$FavouriteItemsLoadProgressCopyWithImpl(_FavouriteItemsLoadProgress _value,
      $Res Function(_FavouriteItemsLoadProgress) _then)
      : super(_value, (v) => _then(v as _FavouriteItemsLoadProgress));

  @override
  _FavouriteItemsLoadProgress get _value =>
      super._value as _FavouriteItemsLoadProgress;
}

/// @nodoc

class _$_FavouriteItemsLoadProgress implements _FavouriteItemsLoadProgress {
  const _$_FavouriteItemsLoadProgress();

  @override
  String toString() {
    return 'FavouriteState.favouriteItemsLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItemsLoadProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favouriteItemsLoadInProgress,
    required TResult Function(List<FavouriteItem> products)
        favouriteItemsLoadSuccess,
    required TResult Function(Failure homeFailure) favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadInProgress != null) {
      return favouriteItemsLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavouriteItemsLoadProgress value)
        favouriteItemsLoadInProgress,
    required TResult Function(_FavouriteItemsLoadSuccess value)
        favouriteItemsLoadSuccess,
    required TResult Function(_FavouriteItemsLoadFailure value)
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadInProgress != null) {
      return favouriteItemsLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _FavouriteItemsLoadProgress implements FavouriteState {
  const factory _FavouriteItemsLoadProgress() = _$_FavouriteItemsLoadProgress;
}

/// @nodoc
abstract class _$FavouriteItemsLoadSuccessCopyWith<$Res> {
  factory _$FavouriteItemsLoadSuccessCopyWith(_FavouriteItemsLoadSuccess value,
          $Res Function(_FavouriteItemsLoadSuccess) then) =
      __$FavouriteItemsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<FavouriteItem> products});
}

/// @nodoc
class __$FavouriteItemsLoadSuccessCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteItemsLoadSuccessCopyWith<$Res> {
  __$FavouriteItemsLoadSuccessCopyWithImpl(_FavouriteItemsLoadSuccess _value,
      $Res Function(_FavouriteItemsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _FavouriteItemsLoadSuccess));

  @override
  _FavouriteItemsLoadSuccess get _value =>
      super._value as _FavouriteItemsLoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_FavouriteItemsLoadSuccess(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FavouriteItem>,
    ));
  }
}

/// @nodoc

class _$_FavouriteItemsLoadSuccess implements _FavouriteItemsLoadSuccess {
  const _$_FavouriteItemsLoadSuccess(this.products);

  @override
  final List<FavouriteItem> products;

  @override
  String toString() {
    return 'FavouriteState.favouriteItemsLoadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItemsLoadSuccess &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$FavouriteItemsLoadSuccessCopyWith<_FavouriteItemsLoadSuccess>
      get copyWith =>
          __$FavouriteItemsLoadSuccessCopyWithImpl<_FavouriteItemsLoadSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favouriteItemsLoadInProgress,
    required TResult Function(List<FavouriteItem> products)
        favouriteItemsLoadSuccess,
    required TResult Function(Failure homeFailure) favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadSuccess != null) {
      return favouriteItemsLoadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavouriteItemsLoadProgress value)
        favouriteItemsLoadInProgress,
    required TResult Function(_FavouriteItemsLoadSuccess value)
        favouriteItemsLoadSuccess,
    required TResult Function(_FavouriteItemsLoadFailure value)
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadSuccess != null) {
      return favouriteItemsLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _FavouriteItemsLoadSuccess implements FavouriteState {
  const factory _FavouriteItemsLoadSuccess(List<FavouriteItem> products) =
      _$_FavouriteItemsLoadSuccess;

  List<FavouriteItem> get products;
  @JsonKey(ignore: true)
  _$FavouriteItemsLoadSuccessCopyWith<_FavouriteItemsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavouriteItemsLoadFailureCopyWith<$Res> {
  factory _$FavouriteItemsLoadFailureCopyWith(_FavouriteItemsLoadFailure value,
          $Res Function(_FavouriteItemsLoadFailure) then) =
      __$FavouriteItemsLoadFailureCopyWithImpl<$Res>;
  $Res call({Failure homeFailure});

  $FailureCopyWith<$Res> get homeFailure;
}

/// @nodoc
class __$FavouriteItemsLoadFailureCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteItemsLoadFailureCopyWith<$Res> {
  __$FavouriteItemsLoadFailureCopyWithImpl(_FavouriteItemsLoadFailure _value,
      $Res Function(_FavouriteItemsLoadFailure) _then)
      : super(_value, (v) => _then(v as _FavouriteItemsLoadFailure));

  @override
  _FavouriteItemsLoadFailure get _value =>
      super._value as _FavouriteItemsLoadFailure;

  @override
  $Res call({
    Object? homeFailure = freezed,
  }) {
    return _then(_FavouriteItemsLoadFailure(
      homeFailure == freezed
          ? _value.homeFailure
          : homeFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get homeFailure {
    return $FailureCopyWith<$Res>(_value.homeFailure, (value) {
      return _then(_value.copyWith(homeFailure: value));
    });
  }
}

/// @nodoc

class _$_FavouriteItemsLoadFailure implements _FavouriteItemsLoadFailure {
  const _$_FavouriteItemsLoadFailure(this.homeFailure);

  @override
  final Failure homeFailure;

  @override
  String toString() {
    return 'FavouriteState.favouriteItemsLoadFailure(homeFailure: $homeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItemsLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.homeFailure, homeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homeFailure));

  @JsonKey(ignore: true)
  @override
  _$FavouriteItemsLoadFailureCopyWith<_FavouriteItemsLoadFailure>
      get copyWith =>
          __$FavouriteItemsLoadFailureCopyWithImpl<_FavouriteItemsLoadFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favouriteItemsLoadInProgress,
    required TResult Function(List<FavouriteItem> products)
        favouriteItemsLoadSuccess,
    required TResult Function(Failure homeFailure) favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadFailure(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadFailure?.call(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favouriteItemsLoadInProgress,
    TResult Function(List<FavouriteItem> products)? favouriteItemsLoadSuccess,
    TResult Function(Failure homeFailure)? favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadFailure != null) {
      return favouriteItemsLoadFailure(homeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavouriteItemsLoadProgress value)
        favouriteItemsLoadInProgress,
    required TResult Function(_FavouriteItemsLoadSuccess value)
        favouriteItemsLoadSuccess,
    required TResult Function(_FavouriteItemsLoadFailure value)
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
  }) {
    return favouriteItemsLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavouriteItemsLoadProgress value)?
        favouriteItemsLoadInProgress,
    TResult Function(_FavouriteItemsLoadSuccess value)?
        favouriteItemsLoadSuccess,
    TResult Function(_FavouriteItemsLoadFailure value)?
        favouriteItemsLoadFailure,
    required TResult orElse(),
  }) {
    if (favouriteItemsLoadFailure != null) {
      return favouriteItemsLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _FavouriteItemsLoadFailure implements FavouriteState {
  const factory _FavouriteItemsLoadFailure(Failure homeFailure) =
      _$_FavouriteItemsLoadFailure;

  Failure get homeFailure;
  @JsonKey(ignore: true)
  _$FavouriteItemsLoadFailureCopyWith<_FavouriteItemsLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
