import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/entities/failures.dart';
import '../../domain/entities/product.dart';
import '../../domain/usecases/search_products.dart';

part 'search_event.dart';

part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchProducts _searchProducts;

  SearchBloc(this._searchProducts) : super(SearchStateEmpty()) {
    on<TextChanged>(_onTextChanged, transformer: (eventsStream, mapper) {
      return eventsStream
          .where((event) => event.text.length >= 2)
          .debounceTime(const Duration(milliseconds: 300))
          .distinct()
          .switchMap(mapper);
    });
  }

  void _onTextChanged(
    TextChanged event,
    Emitter<SearchState> emit,
  ) async {
    final searchTerm = event.text;
    print('Searching for $searchTerm');
    if (searchTerm.isEmpty) return emit(SearchStateEmpty());

    emit(SearchStateLoading());
    await _searchProducts(searchTerm).then((result) {
      emit(result.fold((failure) => SearchStateError(failure),
          (products) => SearchStateSuccess(products)));
    });
  }

  EventTransformer<TextChanged> debounce<Event>() {
    return (events, mapper) => events
        .where((event) => event.text.length >= 2)
        .debounceTime(const Duration(milliseconds: 300))
        .switchMap(mapper);
  }
}
