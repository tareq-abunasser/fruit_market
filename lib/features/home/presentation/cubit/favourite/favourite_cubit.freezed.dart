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

  _ProductsLoadProgress productsLoadInProgress() {
    return const _ProductsLoadProgress();
  }

  _ProductsLoadSuccess productsLoadSuccess(List<Product> products) {
    return _ProductsLoadSuccess(
      products,
    );
  }

  _ProductsLoadFailure productsLoadFailure(HomeFailure homeFailure) {
    return _ProductsLoadFailure(
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
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProductsLoadProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
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
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
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
    required TResult Function(_ProductsLoadProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
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
abstract class _$ProductsLoadProgressCopyWith<$Res> {
  factory _$ProductsLoadProgressCopyWith(_ProductsLoadProgress value,
          $Res Function(_ProductsLoadProgress) then) =
      __$ProductsLoadProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductsLoadProgressCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$ProductsLoadProgressCopyWith<$Res> {
  __$ProductsLoadProgressCopyWithImpl(
      _ProductsLoadProgress _value, $Res Function(_ProductsLoadProgress) _then)
      : super(_value, (v) => _then(v as _ProductsLoadProgress));

  @override
  _ProductsLoadProgress get _value => super._value as _ProductsLoadProgress;
}

/// @nodoc

class _$_ProductsLoadProgress implements _ProductsLoadProgress {
  const _$_ProductsLoadProgress();

  @override
  String toString() {
    return 'FavouriteState.productsLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ProductsLoadProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
  }) {
    return productsLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
  }) {
    return productsLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadInProgress != null) {
      return productsLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProductsLoadProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
  }) {
    return productsLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
  }) {
    return productsLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadInProgress != null) {
      return productsLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadProgress implements FavouriteState {
  const factory _ProductsLoadProgress() = _$_ProductsLoadProgress;
}

/// @nodoc
abstract class _$ProductsLoadSuccessCopyWith<$Res> {
  factory _$ProductsLoadSuccessCopyWith(_ProductsLoadSuccess value,
          $Res Function(_ProductsLoadSuccess) then) =
      __$ProductsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductsLoadSuccessCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$ProductsLoadSuccessCopyWith<$Res> {
  __$ProductsLoadSuccessCopyWithImpl(
      _ProductsLoadSuccess _value, $Res Function(_ProductsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ProductsLoadSuccess));

  @override
  _ProductsLoadSuccess get _value => super._value as _ProductsLoadSuccess;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductsLoadSuccess(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductsLoadSuccess implements _ProductsLoadSuccess {
  const _$_ProductsLoadSuccess(this.products);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'FavouriteState.productsLoadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsLoadSuccess &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductsLoadSuccessCopyWith<_ProductsLoadSuccess> get copyWith =>
      __$ProductsLoadSuccessCopyWithImpl<_ProductsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
  }) {
    return productsLoadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
  }) {
    return productsLoadSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadSuccess != null) {
      return productsLoadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProductsLoadProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
  }) {
    return productsLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
  }) {
    return productsLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadSuccess != null) {
      return productsLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadSuccess implements FavouriteState {
  const factory _ProductsLoadSuccess(List<Product> products) =
      _$_ProductsLoadSuccess;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$ProductsLoadSuccessCopyWith<_ProductsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductsLoadFailureCopyWith<$Res> {
  factory _$ProductsLoadFailureCopyWith(_ProductsLoadFailure value,
          $Res Function(_ProductsLoadFailure) then) =
      __$ProductsLoadFailureCopyWithImpl<$Res>;
  $Res call({HomeFailure homeFailure});

  $HomeFailureCopyWith<$Res> get homeFailure;
}

/// @nodoc
class __$ProductsLoadFailureCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$ProductsLoadFailureCopyWith<$Res> {
  __$ProductsLoadFailureCopyWithImpl(
      _ProductsLoadFailure _value, $Res Function(_ProductsLoadFailure) _then)
      : super(_value, (v) => _then(v as _ProductsLoadFailure));

  @override
  _ProductsLoadFailure get _value => super._value as _ProductsLoadFailure;

  @override
  $Res call({
    Object? homeFailure = freezed,
  }) {
    return _then(_ProductsLoadFailure(
      homeFailure == freezed
          ? _value.homeFailure
          : homeFailure // ignore: cast_nullable_to_non_nullable
              as HomeFailure,
    ));
  }

  @override
  $HomeFailureCopyWith<$Res> get homeFailure {
    return $HomeFailureCopyWith<$Res>(_value.homeFailure, (value) {
      return _then(_value.copyWith(homeFailure: value));
    });
  }
}

/// @nodoc

class _$_ProductsLoadFailure implements _ProductsLoadFailure {
  const _$_ProductsLoadFailure(this.homeFailure);

  @override
  final HomeFailure homeFailure;

  @override
  String toString() {
    return 'FavouriteState.productsLoadFailure(homeFailure: $homeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.homeFailure, homeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homeFailure));

  @JsonKey(ignore: true)
  @override
  _$ProductsLoadFailureCopyWith<_ProductsLoadFailure> get copyWith =>
      __$ProductsLoadFailureCopyWithImpl<_ProductsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
  }) {
    return productsLoadFailure(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
  }) {
    return productsLoadFailure?.call(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadFailure != null) {
      return productsLoadFailure(homeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProductsLoadProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
  }) {
    return productsLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
  }) {
    return productsLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProductsLoadProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadFailure != null) {
      return productsLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadFailure implements FavouriteState {
  const factory _ProductsLoadFailure(HomeFailure homeFailure) =
      _$_ProductsLoadFailure;

  HomeFailure get homeFailure;
  @JsonKey(ignore: true)
  _$ProductsLoadFailureCopyWith<_ProductsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
