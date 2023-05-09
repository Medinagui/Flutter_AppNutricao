import 'package:flutter/material.dart';

class Alimento {
  String nome;
  Image foto;
  String categoria;
  String tipo;

  Alimento(
      {required this.nome,
      required this.foto,
      required this.categoria,
      required this.tipo}
  );
}
