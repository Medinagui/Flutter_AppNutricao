import 'dart:typed_data';



const String tableAlimentos = 'Alimentos';

class AlimentosFields {

  static final List<String> values = [
    id, nome, foto, categoria, tipo
  ];

  static const String id = '_id';
  static const String nome = 'nome';
  static const String foto = 'foto';
  static const String categoria = 'categoria';
  static const String tipo = 'tipo';
}



class Alimento {
  final int? id;
  String nome;
  String foto;
  String categoria;
  String tipo;

  Alimento(
      {
      this.id,
      required this.nome,
      required this.foto,
      required this.categoria,
      required this.tipo}
  );

  Map<String, Object?> toJson() => {
    AlimentosFields.id: id,
    AlimentosFields.nome: nome,
    AlimentosFields.foto: foto,
    AlimentosFields.categoria: categoria,
    AlimentosFields.tipo: tipo
  };

  Alimento copy({
    int? id,
    String? nome,
    String? foto,
    String? categoria,
    String? tipo
  }) =>

  Alimento(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    foto: foto ?? this.foto,
    categoria: categoria ?? this.categoria,
    tipo: tipo ?? this.tipo,
  );

  static Alimento fromJson(Map<String, Object?> json) => Alimento(
    id: json[AlimentosFields.id] as int?,
    nome: json[AlimentosFields.nome] as String, 
    foto: json[AlimentosFields.foto] as String, 
    categoria: json[AlimentosFields.categoria] as String, 
    tipo: json[AlimentosFields.tipo] as String);

}
