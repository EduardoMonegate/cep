

abstract class SearchEvent {}

class LoadEvent extends SearchEvent {}

class AddSearchEvent extends SearchEvent {
  String cep;

  AddSearchEvent({
    required this.cep,
  });
}


