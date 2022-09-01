import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  static BottomNavCubit getInstance(context) {
    return BlocProvider.of(context);
  }
  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index) => emit(index);
  
}
