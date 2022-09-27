import 'package:flutter/material.dart';
import 'package:flutter_arquitetura_limpa/app/core/components/input.dart';

import 'package:get_it/get_it.dart';

import '../../core/components/andress_card.dart';
import 'controller/search_bloc.dart';
import 'controller/search_events.dart';
import 'controller/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCepPage extends StatefulWidget {
  const SearchCepPage({Key? key}) : super(key: key);

  @override
  State<SearchCepPage> createState() => _SearchCepPageState();
}

class _SearchCepPageState extends State<SearchCepPage> {
  late SearchBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance.get<SearchBloc>();
    bloc.add(LoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 225, 225),
        appBar: AppBar(
          title: Text("Buscar novo CEP"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Input(
                text: "Busque por um novo Cep",
                onChanged: (cb) {
                    bloc.add(AddSearchEvent(cep: cb));
                  },
              ),
            ),
            Center(
              child: BlocBuilder<SearchBloc, SearchState>(
                  bloc: bloc,
                  builder: (context, state) {
                    if (state is SearchLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is SearchInitialState) {
                      return const Center(
                        
                      );
                    } else if (state is SearchSuccessState) {
                      final andress = state.search;
                      if (andress == null) {
                        return const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Center(
                            child: Text("Cep não encontrado!"),
                          ),
                        );
                      } else {
                        return AndressCard(district: andress.bairro, locality: andress.localidade, publicPlace: andress.lougradouro, onPressed: () {  },);
                      }
                    }
                    return Container();
                  }),
            ),
          ],
        ));
  }
}
