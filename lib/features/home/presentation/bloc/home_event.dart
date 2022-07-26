part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchProductMainClasses() = _WatchProductMainClasses;

  const factory HomeEvent.watchProductSubclasses(
      {String? parentId,
      int? limit,
      String? lastProductSubClassId}) = _WatchProductSubclasses;

  const factory HomeEvent.watchProducts(
      {String? parentId, int? limit, String? lastProduct}) = _WatchProducts;

  const factory HomeEvent.productsReceived(
    Either<HomeFailure, List<Product>> failureOrProducts,
  ) = _ProductsReceived;

  const factory HomeEvent.productMainClassesReceived(
    Either<HomeFailure, List<ProductMainClass>> failureOrProductMainClasses,
  ) = _ProductMainClassesReceived;

  const factory HomeEvent.productSubclassesReceived(
    Either<HomeFailure, List<ProductSubclass>> failureOrProductSubclasses,
  ) = _ProductSubclassesReceived;

}
