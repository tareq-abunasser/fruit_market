// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../../../core/entities/failures.dart';
// import '../../../../cart/domain/repositories/i_cart_repository.dart';
// import '../../../domain/entities/product.dart';
// import '../../../domain/faliures/home_failure.dart';
// import '../../../domain/repositories/i_home_repository.dart';
// import '../../../domain/usecases/add_cart_item.dart';
//
// part 'cart_state.dart';
//
// part 'cart_cubit.freezed.dart';
//
// // @injectable
// class CartCubit extends Cubit<CartState> {
//   CartCubit(this._iHomeRepository, this._addCartItem)
//       : super(const CartState.initial());
//   final IHomeRepository _iHomeRepository;
//   final AddCartItem _addCartItem;
//
//   void watchCartProducts() {
//     emit(const CartState.productsLoadInProgress());
//     _iHomeRepository.getCart().then((failureOrProducts) => failureOrProducts
//             .fold((f) => emit(CartState.productsLoadFailure(f)), (products) {
//           emit(CartState.productsLoadSuccess(products));
//         }));
//   }
//
//   void addToCart(Product product, int quantity) {
//     _addCartItem(product, quantity).then((failureOrUnit) => failureOrUnit.fold(
//         (f) => emit(CartState.addToCartFailure(f)),
//         (unit) => emit(const CartState.addToCartSuccess())));
//   }
// }
