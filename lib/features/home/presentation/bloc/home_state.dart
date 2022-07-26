part of 'home_bloc.dart';
//
// abstract class HomeState extends Equatable {
//   const HomeState();
//
//   @override
//   List<Object> get props => [];
// }
// class HomeInitial extends HomeState {}
//


@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.productsLoadInProgress() = _ProductsLoadInProgress;
  const factory HomeState.productsLoadSuccess(List<Product> products) = _ProductsLoadSuccess;
  const factory HomeState.productsLoadFailure(HomeFailure homeFailure) =
  _ProductsLoadFailure;
  const factory HomeState.productMainClassesLoadInProgress() = _ProductMainClassesLoadInProgress;
  const factory HomeState.productMainClassesLoadSuccess(List<ProductMainClass> productMainClasses) = _ProductMainClassesLoadSuccess;
  const factory HomeState.productMainClassesLoadFailure(HomeFailure homeFailure) =
  _ProductMainClassesLoadFailure;

  const factory HomeState.productSubclassesLoadInProgress() = _ProductSubclassesLoadInProgress;
  const factory HomeState.productSubclassesLoadSuccess(List<ProductSubclass> productSubclasses) = _ProductSubclassesLoadSuccess;
  const factory HomeState.productSubclassesLoadFailure(HomeFailure homeFailure) =
  _ProductSubclassesLoadFailure;

}
