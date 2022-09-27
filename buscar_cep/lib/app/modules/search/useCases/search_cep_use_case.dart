import '../../../core/models/andress_model.dart';
import '../repositories/i_get_cep_repository.dart';



class SearchCepUseCase {
  final IGetCepRepository  repository;
  SearchCepUseCase(this.repository);

  

  Future<AndressModel?> call({required String cep}) async {
     AndressModel? andress;
     andress = await repository.findAndress(cep);


    return andress;
  }
}
