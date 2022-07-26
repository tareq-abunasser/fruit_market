// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _WatchProductMainClasses watchProductMainClasses() {
    return const _WatchProductMainClasses();
  }

  _WatchProductSubclasses watchProductSubclasses(
      {String? parentId, int? limit, String? lastProductSubClassId}) {
    return _WatchProductSubclasses(
      parentId: parentId,
      limit: limit,
      lastProductSubClassId: lastProductSubClassId,
    );
  }

  _WatchProducts watchProducts(
      {String? parentId, int? limit, String? lastProduct}) {
    return _WatchProducts(
      parentId: parentId,
      limit: limit,
      lastProduct: lastProduct,
    );
  }

  _ProductsReceived productsReceived(
      Either<HomeFailure, List<Product>> failureOrProducts) {
    return _ProductsReceived(
      failureOrProducts,
    );
  }

  _ProductMainClassesReceived productMainClassesReceived(
      Either<HomeFailure, List<ProductMainClass>> failureOrProductMainClasses) {
    return _ProductMainClassesReceived(
      failureOrProductMainClasses,
    );
  }

  _ProductSubclassesReceived productSubclassesReceived(
      Either<HomeFailure, List<ProductSubclass>> failureOrProductSubclasses) {
    return _ProductSubclassesReceived(
      failureOrProductSubclasses,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$WatchProductMainClassesCopyWith<$Res> {
  factory _$WatchProductMainClassesCopyWith(_WatchProductMainClasses value,
          $Res Function(_WatchProductMainClasses) then) =
      __$WatchProductMainClassesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchProductMainClassesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchProductMainClassesCopyWith<$Res> {
  __$WatchProductMainClassesCopyWithImpl(_WatchProductMainClasses _value,
      $Res Function(_WatchProductMainClasses) _then)
      : super(_value, (v) => _then(v as _WatchProductMainClasses));

  @override
  _WatchProductMainClasses get _value =>
      super._value as _WatchProductMainClasses;
}

/// @nodoc

class _$_WatchProductMainClasses implements _WatchProductMainClasses {
  const _$_WatchProductMainClasses();

  @override
  String toString() {
    return 'HomeEvent.watchProductMainClasses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchProductMainClasses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return watchProductMainClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return watchProductMainClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProductMainClasses != null) {
      return watchProductMainClasses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return watchProductMainClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return watchProductMainClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProductMainClasses != null) {
      return watchProductMainClasses(this);
    }
    return orElse();
  }
}

abstract class _WatchProductMainClasses implements HomeEvent {
  const factory _WatchProductMainClasses() = _$_WatchProductMainClasses;
}

/// @nodoc
abstract class _$WatchProductSubclassesCopyWith<$Res> {
  factory _$WatchProductSubclassesCopyWith(_WatchProductSubclasses value,
          $Res Function(_WatchProductSubclasses) then) =
      __$WatchProductSubclassesCopyWithImpl<$Res>;
  $Res call({String? parentId, int? limit, String? lastProductSubClassId});
}

/// @nodoc
class __$WatchProductSubclassesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchProductSubclassesCopyWith<$Res> {
  __$WatchProductSubclassesCopyWithImpl(_WatchProductSubclasses _value,
      $Res Function(_WatchProductSubclasses) _then)
      : super(_value, (v) => _then(v as _WatchProductSubclasses));

  @override
  _WatchProductSubclasses get _value => super._value as _WatchProductSubclasses;

  @override
  $Res call({
    Object? parentId = freezed,
    Object? limit = freezed,
    Object? lastProductSubClassId = freezed,
  }) {
    return _then(_WatchProductSubclasses(
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      lastProductSubClassId: lastProductSubClassId == freezed
          ? _value.lastProductSubClassId
          : lastProductSubClassId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchProductSubclasses implements _WatchProductSubclasses {
  const _$_WatchProductSubclasses(
      {this.parentId, this.limit, this.lastProductSubClassId});

  @override
  final String? parentId;
  @override
  final int? limit;
  @override
  final String? lastProductSubClassId;

  @override
  String toString() {
    return 'HomeEvent.watchProductSubclasses(parentId: $parentId, limit: $limit, lastProductSubClassId: $lastProductSubClassId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchProductSubclasses &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.lastProductSubClassId, lastProductSubClassId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(lastProductSubClassId));

  @JsonKey(ignore: true)
  @override
  _$WatchProductSubclassesCopyWith<_WatchProductSubclasses> get copyWith =>
      __$WatchProductSubclassesCopyWithImpl<_WatchProductSubclasses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return watchProductSubclasses(parentId, limit, lastProductSubClassId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return watchProductSubclasses?.call(parentId, limit, lastProductSubClassId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProductSubclasses != null) {
      return watchProductSubclasses(parentId, limit, lastProductSubClassId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return watchProductSubclasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return watchProductSubclasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProductSubclasses != null) {
      return watchProductSubclasses(this);
    }
    return orElse();
  }
}

abstract class _WatchProductSubclasses implements HomeEvent {
  const factory _WatchProductSubclasses(
      {String? parentId,
      int? limit,
      String? lastProductSubClassId}) = _$_WatchProductSubclasses;

  String? get parentId;
  int? get limit;
  String? get lastProductSubClassId;
  @JsonKey(ignore: true)
  _$WatchProductSubclassesCopyWith<_WatchProductSubclasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchProductsCopyWith<$Res> {
  factory _$WatchProductsCopyWith(
          _WatchProducts value, $Res Function(_WatchProducts) then) =
      __$WatchProductsCopyWithImpl<$Res>;
  $Res call({String? parentId, int? limit, String? lastProduct});
}

/// @nodoc
class __$WatchProductsCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchProductsCopyWith<$Res> {
  __$WatchProductsCopyWithImpl(
      _WatchProducts _value, $Res Function(_WatchProducts) _then)
      : super(_value, (v) => _then(v as _WatchProducts));

  @override
  _WatchProducts get _value => super._value as _WatchProducts;

  @override
  $Res call({
    Object? parentId = freezed,
    Object? limit = freezed,
    Object? lastProduct = freezed,
  }) {
    return _then(_WatchProducts(
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      lastProduct: lastProduct == freezed
          ? _value.lastProduct
          : lastProduct // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchProducts implements _WatchProducts {
  const _$_WatchProducts({this.parentId, this.limit, this.lastProduct});

  @override
  final String? parentId;
  @override
  final int? limit;
  @override
  final String? lastProduct;

  @override
  String toString() {
    return 'HomeEvent.watchProducts(parentId: $parentId, limit: $limit, lastProduct: $lastProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchProducts &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.lastProduct, lastProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(lastProduct));

  @JsonKey(ignore: true)
  @override
  _$WatchProductsCopyWith<_WatchProducts> get copyWith =>
      __$WatchProductsCopyWithImpl<_WatchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return watchProducts(parentId, limit, lastProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return watchProducts?.call(parentId, limit, lastProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProducts != null) {
      return watchProducts(parentId, limit, lastProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return watchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return watchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (watchProducts != null) {
      return watchProducts(this);
    }
    return orElse();
  }
}

abstract class _WatchProducts implements HomeEvent {
  const factory _WatchProducts(
      {String? parentId, int? limit, String? lastProduct}) = _$_WatchProducts;

  String? get parentId;
  int? get limit;
  String? get lastProduct;
  @JsonKey(ignore: true)
  _$WatchProductsCopyWith<_WatchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductsReceivedCopyWith<$Res> {
  factory _$ProductsReceivedCopyWith(
          _ProductsReceived value, $Res Function(_ProductsReceived) then) =
      __$ProductsReceivedCopyWithImpl<$Res>;
  $Res call({Either<HomeFailure, List<Product>> failureOrProducts});
}

/// @nodoc
class __$ProductsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$ProductsReceivedCopyWith<$Res> {
  __$ProductsReceivedCopyWithImpl(
      _ProductsReceived _value, $Res Function(_ProductsReceived) _then)
      : super(_value, (v) => _then(v as _ProductsReceived));

  @override
  _ProductsReceived get _value => super._value as _ProductsReceived;

  @override
  $Res call({
    Object? failureOrProducts = freezed,
  }) {
    return _then(_ProductsReceived(
      failureOrProducts == freezed
          ? _value.failureOrProducts
          : failureOrProducts // ignore: cast_nullable_to_non_nullable
              as Either<HomeFailure, List<Product>>,
    ));
  }
}

/// @nodoc

class _$_ProductsReceived implements _ProductsReceived {
  const _$_ProductsReceived(this.failureOrProducts);

  @override
  final Either<HomeFailure, List<Product>> failureOrProducts;

  @override
  String toString() {
    return 'HomeEvent.productsReceived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrProducts, failureOrProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrProducts));

  @JsonKey(ignore: true)
  @override
  _$ProductsReceivedCopyWith<_ProductsReceived> get copyWith =>
      __$ProductsReceivedCopyWithImpl<_ProductsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return productsReceived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return productsReceived?.call(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return productsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return productsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductsReceived implements HomeEvent {
  const factory _ProductsReceived(
          Either<HomeFailure, List<Product>> failureOrProducts) =
      _$_ProductsReceived;

  Either<HomeFailure, List<Product>> get failureOrProducts;
  @JsonKey(ignore: true)
  _$ProductsReceivedCopyWith<_ProductsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductMainClassesReceivedCopyWith<$Res> {
  factory _$ProductMainClassesReceivedCopyWith(
          _ProductMainClassesReceived value,
          $Res Function(_ProductMainClassesReceived) then) =
      __$ProductMainClassesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<HomeFailure, List<ProductMainClass>>
          failureOrProductMainClasses});
}

/// @nodoc
class __$ProductMainClassesReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$ProductMainClassesReceivedCopyWith<$Res> {
  __$ProductMainClassesReceivedCopyWithImpl(_ProductMainClassesReceived _value,
      $Res Function(_ProductMainClassesReceived) _then)
      : super(_value, (v) => _then(v as _ProductMainClassesReceived));

  @override
  _ProductMainClassesReceived get _value =>
      super._value as _ProductMainClassesReceived;

  @override
  $Res call({
    Object? failureOrProductMainClasses = freezed,
  }) {
    return _then(_ProductMainClassesReceived(
      failureOrProductMainClasses == freezed
          ? _value.failureOrProductMainClasses
          : failureOrProductMainClasses // ignore: cast_nullable_to_non_nullable
              as Either<HomeFailure, List<ProductMainClass>>,
    ));
  }
}

/// @nodoc

class _$_ProductMainClassesReceived implements _ProductMainClassesReceived {
  const _$_ProductMainClassesReceived(this.failureOrProductMainClasses);

  @override
  final Either<HomeFailure, List<ProductMainClass>> failureOrProductMainClasses;

  @override
  String toString() {
    return 'HomeEvent.productMainClassesReceived(failureOrProductMainClasses: $failureOrProductMainClasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClassesReceived &&
            const DeepCollectionEquality().equals(
                other.failureOrProductMainClasses,
                failureOrProductMainClasses));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failureOrProductMainClasses));

  @JsonKey(ignore: true)
  @override
  _$ProductMainClassesReceivedCopyWith<_ProductMainClassesReceived>
      get copyWith => __$ProductMainClassesReceivedCopyWithImpl<
          _ProductMainClassesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return productMainClassesReceived(failureOrProductMainClasses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return productMainClassesReceived?.call(failureOrProductMainClasses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productMainClassesReceived != null) {
      return productMainClassesReceived(failureOrProductMainClasses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return productMainClassesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return productMainClassesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productMainClassesReceived != null) {
      return productMainClassesReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductMainClassesReceived implements HomeEvent {
  const factory _ProductMainClassesReceived(
      Either<HomeFailure, List<ProductMainClass>>
          failureOrProductMainClasses) = _$_ProductMainClassesReceived;

  Either<HomeFailure, List<ProductMainClass>> get failureOrProductMainClasses;
  @JsonKey(ignore: true)
  _$ProductMainClassesReceivedCopyWith<_ProductMainClassesReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductSubclassesReceivedCopyWith<$Res> {
  factory _$ProductSubclassesReceivedCopyWith(_ProductSubclassesReceived value,
          $Res Function(_ProductSubclassesReceived) then) =
      __$ProductSubclassesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<HomeFailure, List<ProductSubclass>> failureOrProductSubclasses});
}

/// @nodoc
class __$ProductSubclassesReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$ProductSubclassesReceivedCopyWith<$Res> {
  __$ProductSubclassesReceivedCopyWithImpl(_ProductSubclassesReceived _value,
      $Res Function(_ProductSubclassesReceived) _then)
      : super(_value, (v) => _then(v as _ProductSubclassesReceived));

  @override
  _ProductSubclassesReceived get _value =>
      super._value as _ProductSubclassesReceived;

  @override
  $Res call({
    Object? failureOrProductSubclasses = freezed,
  }) {
    return _then(_ProductSubclassesReceived(
      failureOrProductSubclasses == freezed
          ? _value.failureOrProductSubclasses
          : failureOrProductSubclasses // ignore: cast_nullable_to_non_nullable
              as Either<HomeFailure, List<ProductSubclass>>,
    ));
  }
}

/// @nodoc

class _$_ProductSubclassesReceived implements _ProductSubclassesReceived {
  const _$_ProductSubclassesReceived(this.failureOrProductSubclasses);

  @override
  final Either<HomeFailure, List<ProductSubclass>> failureOrProductSubclasses;

  @override
  String toString() {
    return 'HomeEvent.productSubclassesReceived(failureOrProductSubclasses: $failureOrProductSubclasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclassesReceived &&
            const DeepCollectionEquality().equals(
                other.failureOrProductSubclasses, failureOrProductSubclasses));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failureOrProductSubclasses));

  @JsonKey(ignore: true)
  @override
  _$ProductSubclassesReceivedCopyWith<_ProductSubclassesReceived>
      get copyWith =>
          __$ProductSubclassesReceivedCopyWithImpl<_ProductSubclassesReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductMainClasses,
    required TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)
        watchProductSubclasses,
    required TResult Function(String? parentId, int? limit, String? lastProduct)
        watchProducts,
    required TResult Function(
            Either<HomeFailure, List<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)
        productMainClassesReceived,
    required TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)
        productSubclassesReceived,
  }) {
    return productSubclassesReceived(failureOrProductSubclasses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
  }) {
    return productSubclassesReceived?.call(failureOrProductSubclasses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductMainClasses,
    TResult Function(
            String? parentId, int? limit, String? lastProductSubClassId)?
        watchProductSubclasses,
    TResult Function(String? parentId, int? limit, String? lastProduct)?
        watchProducts,
    TResult Function(Either<HomeFailure, List<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(
            Either<HomeFailure, List<ProductMainClass>>
                failureOrProductMainClasses)?
        productMainClassesReceived,
    TResult Function(
            Either<HomeFailure, List<ProductSubclass>>
                failureOrProductSubclasses)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productSubclassesReceived != null) {
      return productSubclassesReceived(failureOrProductSubclasses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProductMainClasses value)
        watchProductMainClasses,
    required TResult Function(_WatchProductSubclasses value)
        watchProductSubclasses,
    required TResult Function(_WatchProducts value) watchProducts,
    required TResult Function(_ProductsReceived value) productsReceived,
    required TResult Function(_ProductMainClassesReceived value)
        productMainClassesReceived,
    required TResult Function(_ProductSubclassesReceived value)
        productSubclassesReceived,
  }) {
    return productSubclassesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
  }) {
    return productSubclassesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProductMainClasses value)? watchProductMainClasses,
    TResult Function(_WatchProductSubclasses value)? watchProductSubclasses,
    TResult Function(_WatchProducts value)? watchProducts,
    TResult Function(_ProductsReceived value)? productsReceived,
    TResult Function(_ProductMainClassesReceived value)?
        productMainClassesReceived,
    TResult Function(_ProductSubclassesReceived value)?
        productSubclassesReceived,
    required TResult orElse(),
  }) {
    if (productSubclassesReceived != null) {
      return productSubclassesReceived(this);
    }
    return orElse();
  }
}

abstract class _ProductSubclassesReceived implements HomeEvent {
  const factory _ProductSubclassesReceived(
      Either<HomeFailure, List<ProductSubclass>>
          failureOrProductSubclasses) = _$_ProductSubclassesReceived;

  Either<HomeFailure, List<ProductSubclass>> get failureOrProductSubclasses;
  @JsonKey(ignore: true)
  _$ProductSubclassesReceivedCopyWith<_ProductSubclassesReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  _ProductsLoadInProgress productsLoadInProgress() {
    return const _ProductsLoadInProgress();
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

  _ProductMainClassesLoadInProgress productMainClassesLoadInProgress() {
    return const _ProductMainClassesLoadInProgress();
  }

  _ProductMainClassesLoadSuccess productMainClassesLoadSuccess(
      List<ProductMainClass> productMainClasses) {
    return _ProductMainClassesLoadSuccess(
      productMainClasses,
    );
  }

  _ProductMainClassesLoadFailure productMainClassesLoadFailure(
      HomeFailure homeFailure) {
    return _ProductMainClassesLoadFailure(
      homeFailure,
    );
  }

  _ProductSubclassesLoadInProgress productSubclassesLoadInProgress() {
    return const _ProductSubclassesLoadInProgress();
  }

  _ProductSubclassesLoadSuccess productSubclassesLoadSuccess(
      List<ProductSubclass> productSubclasses) {
    return _ProductSubclassesLoadSuccess(
      productSubclasses,
    );
  }

  _ProductSubclassesLoadFailure productSubclassesLoadFailure(
      HomeFailure homeFailure) {
    return _ProductSubclassesLoadFailure(
      homeFailure,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$ProductsLoadInProgressCopyWith<$Res> {
  factory _$ProductsLoadInProgressCopyWith(_ProductsLoadInProgress value,
          $Res Function(_ProductsLoadInProgress) then) =
      __$ProductsLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductsLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductsLoadInProgressCopyWith<$Res> {
  __$ProductsLoadInProgressCopyWithImpl(_ProductsLoadInProgress _value,
      $Res Function(_ProductsLoadInProgress) _then)
      : super(_value, (v) => _then(v as _ProductsLoadInProgress));

  @override
  _ProductsLoadInProgress get _value => super._value as _ProductsLoadInProgress;
}

/// @nodoc

class _$_ProductsLoadInProgress implements _ProductsLoadInProgress {
  const _$_ProductsLoadInProgress();

  @override
  String toString() {
    return 'HomeState.productsLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ProductsLoadInProgress);
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productsLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productsLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadInProgress != null) {
      return productsLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadInProgress implements HomeState {
  const factory _ProductsLoadInProgress() = _$_ProductsLoadInProgress;
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
    extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.productsLoadSuccess(products: $products)';
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productsLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productsLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadSuccess != null) {
      return productsLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadSuccess implements HomeState {
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
    extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.productsLoadFailure(homeFailure: $homeFailure)';
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productsLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productsLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productsLoadFailure != null) {
      return productsLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadFailure implements HomeState {
  const factory _ProductsLoadFailure(HomeFailure homeFailure) =
      _$_ProductsLoadFailure;

  HomeFailure get homeFailure;
  @JsonKey(ignore: true)
  _$ProductsLoadFailureCopyWith<_ProductsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductMainClassesLoadInProgressCopyWith<$Res> {
  factory _$ProductMainClassesLoadInProgressCopyWith(
          _ProductMainClassesLoadInProgress value,
          $Res Function(_ProductMainClassesLoadInProgress) then) =
      __$ProductMainClassesLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductMainClassesLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductMainClassesLoadInProgressCopyWith<$Res> {
  __$ProductMainClassesLoadInProgressCopyWithImpl(
      _ProductMainClassesLoadInProgress _value,
      $Res Function(_ProductMainClassesLoadInProgress) _then)
      : super(_value, (v) => _then(v as _ProductMainClassesLoadInProgress));

  @override
  _ProductMainClassesLoadInProgress get _value =>
      super._value as _ProductMainClassesLoadInProgress;
}

/// @nodoc

class _$_ProductMainClassesLoadInProgress
    implements _ProductMainClassesLoadInProgress {
  const _$_ProductMainClassesLoadInProgress();

  @override
  String toString() {
    return 'HomeState.productMainClassesLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClassesLoadInProgress);
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadInProgress != null) {
      return productMainClassesLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadInProgress != null) {
      return productMainClassesLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _ProductMainClassesLoadInProgress implements HomeState {
  const factory _ProductMainClassesLoadInProgress() =
      _$_ProductMainClassesLoadInProgress;
}

/// @nodoc
abstract class _$ProductMainClassesLoadSuccessCopyWith<$Res> {
  factory _$ProductMainClassesLoadSuccessCopyWith(
          _ProductMainClassesLoadSuccess value,
          $Res Function(_ProductMainClassesLoadSuccess) then) =
      __$ProductMainClassesLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ProductMainClass> productMainClasses});
}

/// @nodoc
class __$ProductMainClassesLoadSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductMainClassesLoadSuccessCopyWith<$Res> {
  __$ProductMainClassesLoadSuccessCopyWithImpl(
      _ProductMainClassesLoadSuccess _value,
      $Res Function(_ProductMainClassesLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ProductMainClassesLoadSuccess));

  @override
  _ProductMainClassesLoadSuccess get _value =>
      super._value as _ProductMainClassesLoadSuccess;

  @override
  $Res call({
    Object? productMainClasses = freezed,
  }) {
    return _then(_ProductMainClassesLoadSuccess(
      productMainClasses == freezed
          ? _value.productMainClasses
          : productMainClasses // ignore: cast_nullable_to_non_nullable
              as List<ProductMainClass>,
    ));
  }
}

/// @nodoc

class _$_ProductMainClassesLoadSuccess
    implements _ProductMainClassesLoadSuccess {
  const _$_ProductMainClassesLoadSuccess(this.productMainClasses);

  @override
  final List<ProductMainClass> productMainClasses;

  @override
  String toString() {
    return 'HomeState.productMainClassesLoadSuccess(productMainClasses: $productMainClasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClassesLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.productMainClasses, productMainClasses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productMainClasses));

  @JsonKey(ignore: true)
  @override
  _$ProductMainClassesLoadSuccessCopyWith<_ProductMainClassesLoadSuccess>
      get copyWith => __$ProductMainClassesLoadSuccessCopyWithImpl<
          _ProductMainClassesLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadSuccess(productMainClasses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadSuccess?.call(productMainClasses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadSuccess != null) {
      return productMainClassesLoadSuccess(productMainClasses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadSuccess != null) {
      return productMainClassesLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProductMainClassesLoadSuccess implements HomeState {
  const factory _ProductMainClassesLoadSuccess(
          List<ProductMainClass> productMainClasses) =
      _$_ProductMainClassesLoadSuccess;

  List<ProductMainClass> get productMainClasses;
  @JsonKey(ignore: true)
  _$ProductMainClassesLoadSuccessCopyWith<_ProductMainClassesLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductMainClassesLoadFailureCopyWith<$Res> {
  factory _$ProductMainClassesLoadFailureCopyWith(
          _ProductMainClassesLoadFailure value,
          $Res Function(_ProductMainClassesLoadFailure) then) =
      __$ProductMainClassesLoadFailureCopyWithImpl<$Res>;
  $Res call({HomeFailure homeFailure});

  $HomeFailureCopyWith<$Res> get homeFailure;
}

/// @nodoc
class __$ProductMainClassesLoadFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductMainClassesLoadFailureCopyWith<$Res> {
  __$ProductMainClassesLoadFailureCopyWithImpl(
      _ProductMainClassesLoadFailure _value,
      $Res Function(_ProductMainClassesLoadFailure) _then)
      : super(_value, (v) => _then(v as _ProductMainClassesLoadFailure));

  @override
  _ProductMainClassesLoadFailure get _value =>
      super._value as _ProductMainClassesLoadFailure;

  @override
  $Res call({
    Object? homeFailure = freezed,
  }) {
    return _then(_ProductMainClassesLoadFailure(
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

class _$_ProductMainClassesLoadFailure
    implements _ProductMainClassesLoadFailure {
  const _$_ProductMainClassesLoadFailure(this.homeFailure);

  @override
  final HomeFailure homeFailure;

  @override
  String toString() {
    return 'HomeState.productMainClassesLoadFailure(homeFailure: $homeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClassesLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.homeFailure, homeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homeFailure));

  @JsonKey(ignore: true)
  @override
  _$ProductMainClassesLoadFailureCopyWith<_ProductMainClassesLoadFailure>
      get copyWith => __$ProductMainClassesLoadFailureCopyWithImpl<
          _ProductMainClassesLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadFailure(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadFailure?.call(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadFailure != null) {
      return productMainClassesLoadFailure(homeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productMainClassesLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productMainClassesLoadFailure != null) {
      return productMainClassesLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _ProductMainClassesLoadFailure implements HomeState {
  const factory _ProductMainClassesLoadFailure(HomeFailure homeFailure) =
      _$_ProductMainClassesLoadFailure;

  HomeFailure get homeFailure;
  @JsonKey(ignore: true)
  _$ProductMainClassesLoadFailureCopyWith<_ProductMainClassesLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductSubclassesLoadInProgressCopyWith<$Res> {
  factory _$ProductSubclassesLoadInProgressCopyWith(
          _ProductSubclassesLoadInProgress value,
          $Res Function(_ProductSubclassesLoadInProgress) then) =
      __$ProductSubclassesLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductSubclassesLoadInProgressCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductSubclassesLoadInProgressCopyWith<$Res> {
  __$ProductSubclassesLoadInProgressCopyWithImpl(
      _ProductSubclassesLoadInProgress _value,
      $Res Function(_ProductSubclassesLoadInProgress) _then)
      : super(_value, (v) => _then(v as _ProductSubclassesLoadInProgress));

  @override
  _ProductSubclassesLoadInProgress get _value =>
      super._value as _ProductSubclassesLoadInProgress;
}

/// @nodoc

class _$_ProductSubclassesLoadInProgress
    implements _ProductSubclassesLoadInProgress {
  const _$_ProductSubclassesLoadInProgress();

  @override
  String toString() {
    return 'HomeState.productSubclassesLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclassesLoadInProgress);
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
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadInProgress != null) {
      return productSubclassesLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadInProgress != null) {
      return productSubclassesLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _ProductSubclassesLoadInProgress implements HomeState {
  const factory _ProductSubclassesLoadInProgress() =
      _$_ProductSubclassesLoadInProgress;
}

/// @nodoc
abstract class _$ProductSubclassesLoadSuccessCopyWith<$Res> {
  factory _$ProductSubclassesLoadSuccessCopyWith(
          _ProductSubclassesLoadSuccess value,
          $Res Function(_ProductSubclassesLoadSuccess) then) =
      __$ProductSubclassesLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ProductSubclass> productSubclasses});
}

/// @nodoc
class __$ProductSubclassesLoadSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductSubclassesLoadSuccessCopyWith<$Res> {
  __$ProductSubclassesLoadSuccessCopyWithImpl(
      _ProductSubclassesLoadSuccess _value,
      $Res Function(_ProductSubclassesLoadSuccess) _then)
      : super(_value, (v) => _then(v as _ProductSubclassesLoadSuccess));

  @override
  _ProductSubclassesLoadSuccess get _value =>
      super._value as _ProductSubclassesLoadSuccess;

  @override
  $Res call({
    Object? productSubclasses = freezed,
  }) {
    return _then(_ProductSubclassesLoadSuccess(
      productSubclasses == freezed
          ? _value.productSubclasses
          : productSubclasses // ignore: cast_nullable_to_non_nullable
              as List<ProductSubclass>,
    ));
  }
}

/// @nodoc

class _$_ProductSubclassesLoadSuccess implements _ProductSubclassesLoadSuccess {
  const _$_ProductSubclassesLoadSuccess(this.productSubclasses);

  @override
  final List<ProductSubclass> productSubclasses;

  @override
  String toString() {
    return 'HomeState.productSubclassesLoadSuccess(productSubclasses: $productSubclasses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclassesLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.productSubclasses, productSubclasses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productSubclasses));

  @JsonKey(ignore: true)
  @override
  _$ProductSubclassesLoadSuccessCopyWith<_ProductSubclassesLoadSuccess>
      get copyWith => __$ProductSubclassesLoadSuccessCopyWithImpl<
          _ProductSubclassesLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadSuccess(productSubclasses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadSuccess?.call(productSubclasses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadSuccess != null) {
      return productSubclassesLoadSuccess(productSubclasses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadSuccess != null) {
      return productSubclassesLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ProductSubclassesLoadSuccess implements HomeState {
  const factory _ProductSubclassesLoadSuccess(
          List<ProductSubclass> productSubclasses) =
      _$_ProductSubclassesLoadSuccess;

  List<ProductSubclass> get productSubclasses;
  @JsonKey(ignore: true)
  _$ProductSubclassesLoadSuccessCopyWith<_ProductSubclassesLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductSubclassesLoadFailureCopyWith<$Res> {
  factory _$ProductSubclassesLoadFailureCopyWith(
          _ProductSubclassesLoadFailure value,
          $Res Function(_ProductSubclassesLoadFailure) then) =
      __$ProductSubclassesLoadFailureCopyWithImpl<$Res>;
  $Res call({HomeFailure homeFailure});

  $HomeFailureCopyWith<$Res> get homeFailure;
}

/// @nodoc
class __$ProductSubclassesLoadFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$ProductSubclassesLoadFailureCopyWith<$Res> {
  __$ProductSubclassesLoadFailureCopyWithImpl(
      _ProductSubclassesLoadFailure _value,
      $Res Function(_ProductSubclassesLoadFailure) _then)
      : super(_value, (v) => _then(v as _ProductSubclassesLoadFailure));

  @override
  _ProductSubclassesLoadFailure get _value =>
      super._value as _ProductSubclassesLoadFailure;

  @override
  $Res call({
    Object? homeFailure = freezed,
  }) {
    return _then(_ProductSubclassesLoadFailure(
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

class _$_ProductSubclassesLoadFailure implements _ProductSubclassesLoadFailure {
  const _$_ProductSubclassesLoadFailure(this.homeFailure);

  @override
  final HomeFailure homeFailure;

  @override
  String toString() {
    return 'HomeState.productSubclassesLoadFailure(homeFailure: $homeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclassesLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.homeFailure, homeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(homeFailure));

  @JsonKey(ignore: true)
  @override
  _$ProductSubclassesLoadFailureCopyWith<_ProductSubclassesLoadFailure>
      get copyWith => __$ProductSubclassesLoadFailureCopyWithImpl<
          _ProductSubclassesLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoadInProgress,
    required TResult Function(List<Product> products) productsLoadSuccess,
    required TResult Function(HomeFailure homeFailure) productsLoadFailure,
    required TResult Function() productMainClassesLoadInProgress,
    required TResult Function(List<ProductMainClass> productMainClasses)
        productMainClassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productMainClassesLoadFailure,
    required TResult Function() productSubclassesLoadInProgress,
    required TResult Function(List<ProductSubclass> productSubclasses)
        productSubclassesLoadSuccess,
    required TResult Function(HomeFailure homeFailure)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadFailure(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadFailure?.call(homeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoadInProgress,
    TResult Function(List<Product> products)? productsLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productsLoadFailure,
    TResult Function()? productMainClassesLoadInProgress,
    TResult Function(List<ProductMainClass> productMainClasses)?
        productMainClassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productMainClassesLoadFailure,
    TResult Function()? productSubclassesLoadInProgress,
    TResult Function(List<ProductSubclass> productSubclasses)?
        productSubclassesLoadSuccess,
    TResult Function(HomeFailure homeFailure)? productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadFailure != null) {
      return productSubclassesLoadFailure(homeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_ProductsLoadInProgress value)
        productsLoadInProgress,
    required TResult Function(_ProductsLoadSuccess value) productsLoadSuccess,
    required TResult Function(_ProductsLoadFailure value) productsLoadFailure,
    required TResult Function(_ProductMainClassesLoadInProgress value)
        productMainClassesLoadInProgress,
    required TResult Function(_ProductMainClassesLoadSuccess value)
        productMainClassesLoadSuccess,
    required TResult Function(_ProductMainClassesLoadFailure value)
        productMainClassesLoadFailure,
    required TResult Function(_ProductSubclassesLoadInProgress value)
        productSubclassesLoadInProgress,
    required TResult Function(_ProductSubclassesLoadSuccess value)
        productSubclassesLoadSuccess,
    required TResult Function(_ProductSubclassesLoadFailure value)
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
  }) {
    return productSubclassesLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_ProductsLoadInProgress value)? productsLoadInProgress,
    TResult Function(_ProductsLoadSuccess value)? productsLoadSuccess,
    TResult Function(_ProductsLoadFailure value)? productsLoadFailure,
    TResult Function(_ProductMainClassesLoadInProgress value)?
        productMainClassesLoadInProgress,
    TResult Function(_ProductMainClassesLoadSuccess value)?
        productMainClassesLoadSuccess,
    TResult Function(_ProductMainClassesLoadFailure value)?
        productMainClassesLoadFailure,
    TResult Function(_ProductSubclassesLoadInProgress value)?
        productSubclassesLoadInProgress,
    TResult Function(_ProductSubclassesLoadSuccess value)?
        productSubclassesLoadSuccess,
    TResult Function(_ProductSubclassesLoadFailure value)?
        productSubclassesLoadFailure,
    required TResult orElse(),
  }) {
    if (productSubclassesLoadFailure != null) {
      return productSubclassesLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _ProductSubclassesLoadFailure implements HomeState {
  const factory _ProductSubclassesLoadFailure(HomeFailure homeFailure) =
      _$_ProductSubclassesLoadFailure;

  HomeFailure get homeFailure;
  @JsonKey(ignore: true)
  _$ProductSubclassesLoadFailureCopyWith<_ProductSubclassesLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
