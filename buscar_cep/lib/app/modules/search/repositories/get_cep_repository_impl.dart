import 'package:dio/dio.dart';
import 'package:flutter_arquitetura_limpa/app/core/models/andress_model.dart';

import 'i_get_cep_repository.dart';




class GetCepRepositoryImp extends IGetCepRepository {

  @override
  Future<AndressModel?> findAndress(String cep) async {
    

    try {
      var response = await Dio()
          .get('https://viacep.com.br/ws/$cep/json/');

  
      
      return AndressModel.fromJson(response.data);
    } catch (e) {
      print("Error");
    }
  }
}

