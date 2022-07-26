import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());
}
