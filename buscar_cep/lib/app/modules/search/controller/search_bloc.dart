import 'package:bloc/bloc.dart';
import 'package:flutter_arquitetura_limpa/app/modules/search/controller/search_events.dart';
import 'package:flutter_arquitetura_limpa/app/modules/search/repositories/i_get_cep_repository.dart';
import '../useCases/search_cep_use_case.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  

  final SearchCepUseCase _useCase;
  final IGetCepRepository _repository;



  SearchBloc( this._useCase,this._repository) : super(SearchInitialState()) {
   
    on<LoadEvent>(
      (event, emit) => _loadCepStates(),
    );

    on<AddSearchEvent>(
      (event, emit) => _addCepStates(event),
    );


  }

  _loadCepStates() async{
    emit(SearchInitialState());
  }

  _addCepStates(AddSearchEvent event)async {
      emit(SearchLoadingState());
  
    var andress=(await _useCase.call(cep: event.cep));
 
    emit(SearchSuccessState(search:andress));
  }

}
