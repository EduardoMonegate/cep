import 'package:flutter_arquitetura_limpa/app/core/models/andress_model.dart';

abstract class SearchState {
  AndressModel? search;

  SearchState({
    required this.search,
  });
}

class SearchInitialState extends SearchState {
  SearchInitialState() : super(search:null );
}

class SearchSuccessState extends SearchState {
  SearchSuccessState({required AndressModel? search}) : super(search: search);
}

class SearchLoadingState extends SearchState {
  SearchLoadingState() : super(search: null);
}

class SearchErrorState extends SearchState {
  SearchErrorState() : super(search: null);
}
