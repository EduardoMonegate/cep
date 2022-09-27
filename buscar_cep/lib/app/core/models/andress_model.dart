

class AndressModel {
  AndressModel({
    required this.cep,
    required this.lougradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  });

  final String cep;
  final String lougradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;


  factory AndressModel.fromJson(Map<String, dynamic> json) {
    return AndressModel(
      cep:json["cep"],
      bairro: json["bairro"],
      complemento:json["complemento"],
      ddd: json["ddd"],
      gia: json["gia"],
      ibge: json["ibge"],
      localidade: json["localidade"],
      lougradouro: json["logradouro"],
      siafi: json["siafi"],
      uf: json[ "uf"],
    );
  }
}