// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteWatcherStateTearOff {
  const _$FavouriteWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _WatchSuccess watchSuccess(List<FavouriteItem> favouriteItems) {
    return _WatchSuccess(
      favouriteItems,
    );
  }

  _WatchFailure watchFailure(Failure failure) {
    return _WatchFailure(
      failure,
    );
  }
}

/// @nodoc
const $FavouriteWatcherState = _$FavouriteWatcherStateTearOff();

/// @nodoc
mixin _$FavouriteWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<FavouriteItem> favouriteItems) watchSuccess,
    required TResult Function(Failure failure) watchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_WatchSuccess value) watchSuccess,
    required TResult Function(_WatchFailure value) watchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteWatcherStateCopyWith<$Res> {
  factory $FavouriteWatcherStateCopyWith(FavouriteWatcherState value,
          $Res Function(FavouriteWatcherState) then) =
      _$FavouriteWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteWatcherStateCopyWithImpl<$Res>
    implements $FavouriteWatcherStateCopyWith<$Res> {
  _$FavouriteWatcherStateCopyWithImpl(this._value, this._then);

  final FavouriteWatcherState _value;
  // ignore: unused_field
  final $Res Function(FavouriteWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FavouriteWatcherStateCopyWithImpl<$Res>
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
    return 'FavouriteWatcherState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(List<FavouriteItem> favouriteItems) watchSuccess,
    required TResult Function(Failure failure) watchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_WatchSuccess value) watchSuccess,
    required TResult Function(_WatchFailure value) watchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouriteWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$FavouriteWatcherStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'FavouriteWatcherState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<FavouriteItem> favouriteItems) watchSuccess,
    required TResult Function(Failure failure) watchFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_WatchSuccess value) watchSuccess,
    required TResult Function(_WatchFailure value) watchFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FavouriteWatcherState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$WatchSuccessCopyWith<$Res> {
  factory _$WatchSuccessCopyWith(
          _WatchSuccess value, $Res Function(_WatchSuccess) then) =
      __$WatchSuccessCopyWithImpl<$Res>;
  $Res call({List<FavouriteItem> favouriteItems});
}

/// @nodoc
class __$WatchSuccessCopyWithImpl<$Res>
    extends _$FavouriteWatcherStateCopyWithImpl<$Res>
    implements _$WatchSuccessCopyWith<$Res> {
  __$WatchSuccessCopyWithImpl(
      _WatchSuccess _value, $Res Function(_WatchSuccess) _then)
      : super(_value, (v) => _then(v as _WatchSuccess));

  @override
  _WatchSuccess get _value => super._value as _WatchSuccess;

  @override
  $Res call({
    Object? favouriteItems = freezed,
  }) {
    return _then(_WatchSuccess(
      favouriteItems == freezed
          ? _value.favouriteItems
          : favouriteItems // ignore: cast_nullable_to_non_nullable
              as List<FavouriteItem>,
    ));
  }
}

/// @nodoc

class _$_WatchSuccess implements _WatchSuccess {
  const _$_WatchSuccess(this.favouriteItems);

  @override
  final List<FavouriteItem> favouriteItems;

  @override
  String toString() {
    return 'FavouriteWatcherState.watchSuccess(favouriteItems: $favouriteItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchSuccess &&
            const DeepCollectionEquality()
                .equals(other.favouriteItems, favouriteItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(favouriteItems));

  @JsonKey(ignore: true)
  @override
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      __$WatchSuccessCopyWithImpl<_WatchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<FavouriteItem> favouriteItems) watchSuccess,
    required TResult Function(Failure failure) watchFailure,
  }) {
    return watchSuccess(favouriteItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
  }) {
    return watchSuccess?.call(favouriteItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
    required TResult orElse(),
  }) {
    if (watchSuccess != null) {
      return watchSuccess(favouriteItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_WatchSuccess value) watchSuccess,
    required TResult Function(_WatchFailure value) watchFailure,
  }) {
    return watchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
  }) {
    return watchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
    required TResult orElse(),
  }) {
    if (watchSuccess != null) {
      return watchSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchSuccess implements FavouriteWatcherState {
  const factory _WatchSuccess(List<FavouriteItem> favouriteItems) =
      _$_WatchSuccess;

  List<FavouriteItem> get favouriteItems;
  @JsonKey(ignore: true)
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchFailureCopyWith<$Res> {
  factory _$WatchFailureCopyWith(
          _WatchFailure value, $Res Function(_WatchFailure) then) =
      __$WatchFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$WatchFailureCopyWithImpl<$Res>
    extends _$FavouriteWatcherStateCopyWithImpl<$Res>
    implements _$WatchFailureCopyWith<$Res> {
  __$WatchFailureCopyWithImpl(
      _WatchFailure _value, $Res Function(_WatchFailure) _then)
      : super(_value, (v) => _then(v as _WatchFailure));

  @override
  _WatchFailure get _value => super._value as _WatchFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_WatchFailure(
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

class _$_WatchFailure implements _WatchFailure {
  const _$_WatchFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FavouriteWatcherState.watchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$WatchFailureCopyWith<_WatchFailure> get copyWith =>
      __$WatchFailureCopyWithImpl<_WatchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(List<FavouriteItem> favouriteItems) watchSuccess,
    required TResult Function(Failure failure) watchFailure,
  }) {
    return watchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
  }) {
    return watchFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(List<FavouriteItem> favouriteItems)? watchSuccess,
    TResult Function(Failure failure)? watchFailure,
    required TResult orElse(),
  }) {
    if (watchFailure != null) {
      return watchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_WatchSuccess value) watchSuccess,
    required TResult Function(_WatchFailure value) watchFailure,
  }) {
    return watchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
  }) {
    return watchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_WatchSuccess value)? watchSuccess,
    TResult Function(_WatchFailure value)? watchFailure,
    required TResult orElse(),
  }) {
    if (watchFailure != null) {
      return watchFailure(this);
    }
    return orElse();
  }
}

abstract class _WatchFailure implements FavouriteWatcherState {
  const factory _WatchFailure(Failure failure) = _$_WatchFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$WatchFailureCopyWith<_WatchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
