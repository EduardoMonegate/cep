





import '../../../core/models/andress_model.dart';

abstract class IGetCepRepository{
  Future<AndressModel?> findAndress(String cep);
}