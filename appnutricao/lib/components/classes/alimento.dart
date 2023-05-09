import 'package:flutter/material.dart';

const String tableAlimentos = 'Alimentos';

class AlimentosFields {
  static const String id = '_id';
  static const String nome = 'nome';
  static const String foto = 'foto';
  static const String categoria = 'categoria';
  static const String tipo = 'tipo';
}

class Alimento {
  int? id;
  String nome;
  Image foto;
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
}
