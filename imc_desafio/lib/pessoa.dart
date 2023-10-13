class Pessoa {
  String? _nome= "";
  double? _altura;
  double? _peso;
 
  Pessoa(
    this._nome,
    // this._altura,
    // this._peso,
  );

  void setNome(String nome){
    this._nome = nome;
  }

  String? getNome(){
    return _nome;
  }

  void setAltura(double altura){
    this._altura = altura;
  }
  double? getAltura(){
    return _altura;
  }

  void setPeso(double peso){
    this._peso = peso;
  }

  double? getPeso(){
    return _peso;
  }

}
