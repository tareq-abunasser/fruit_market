import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/domain/entities/product_main_class.dart';
import 'package:fruit_market/features/home/domain/entities/product_subclass.dart';
import 'package:fruit_market/features/home/domain/faliures/home_failure.dart';
import 'package:fruit_market/features/home/domain/repositories/i_home_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/usecases/add_cart_item.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

//
// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc() : super(HomeInitial()) {
//     on<HomeEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _iHomeRepository;
  List<ProductMainClass> listProductMainClasses = [];
  List<ProductSubclass> listProductSubclasses = [];
  List<Product> listProducts = [];

  HomeBloc(this._iHomeRepository) : super(const HomeState.initial()) {
    on<HomeEvent>((HomeEvent event, emit) {
      event.map(
        watchProductMainClasses: (_WatchProductMainClasses value) {
          emit(const HomeState.productMainClassesLoadInProgress());
          _iHomeRepository.getProductMainClasses().then(
              (failureOrProductMainClasses) => add(
                  HomeEvent.productMainClassesReceived(
                      failureOrProductMainClasses)));
        },
        productMainClassesReceived: (_ProductMainClassesReceived value) {
          value.failureOrProductMainClasses.fold(
            (f) => emit(HomeState.productMainClassesLoadFailure(f)),
            (productMainClasses) {
              listProductMainClasses.addAll(productMainClasses);
              emit(HomeState.productMainClassesLoadSuccess(productMainClasses));
              productMainClasses.forEach((p) {
                add(HomeEvent.watchProductSubclasses(
                    parentId: p.id.getOrCrash(), limit: 2));
              });
            },
          );
        },
        watchProductSubclasses: (_WatchProductSubclasses value) {
          emit(const HomeState.productSubclassesLoadInProgress());
          _iHomeRepository
              .getProductSubclasses(
                  limit: value.limit ?? 3,
                  parentId: value.parentId,
                  lastProductSubClassId: value.lastProductSubClassId)
              .then((failureOrProductSubclasses) => add(
                  HomeEvent.productSubclassesReceived(
                      failureOrProductSubclasses)));
        },
        productSubclassesReceived: (_ProductSubclassesReceived value) {
          value.failureOrProductSubclasses.fold(
            (f) => emit(HomeState.productSubclassesLoadFailure(f)),
            (productSubclasses) {
              listProductSubclasses.addAll(productSubclasses);
              emit(HomeState.productSubclassesLoadSuccess(productSubclasses));
              productSubclasses.forEach((p) {
                add(HomeEvent.watchProducts(
                    parentId: p.id.getOrCrash(), limit: 3));
              });
            },
          );
        },
        watchProducts: (_WatchProducts value) {
          emit(const HomeState.productsLoadInProgress());
          _iHomeRepository
              .getProducts(
                  limit: value.limit ?? 4,
                  parentId: value.parentId,
                  lastProduct: value.lastProduct)
              .then((failureOrProducts) =>
                  add(HomeEvent.productsReceived(failureOrProducts)));
        },
        productsReceived: (_ProductsReceived value) {
          value.failureOrProducts.fold(
            (f) => emit(HomeState.productsLoadFailure(f)),
            (products) {
              listProducts.addAll(products);
              emit(HomeState.productsLoadSuccess(products));
            },
          );
        },
      );
    }
        // transformer: (eventsStream, mapper){
        //   return eventsStream
        //     .debounceTime(const Duration(milliseconds: 300))
        //     .distinct()
        //     .switchMap(mapper);
        // }
        );
  }

  List<ProductMainClass> get productMainClasses {
    return listProductMainClasses;
  }

  List<ProductSubclass> get productSubclasses {
    return listProductSubclasses;
  }

  List<Product> get products {
    return listProducts;
  }
}
