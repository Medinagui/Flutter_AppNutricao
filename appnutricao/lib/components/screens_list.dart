import 'package:appnutricao/screens/cadastro.dart';
import 'package:appnutricao/screens/cadastro_user_login.dart';
import 'package:appnutricao/screens/creditos.dart';
import 'package:appnutricao/screens/login.dart';
import 'package:appnutricao/screens/tela_principal.dart';
import 'package:flutter/material.dart';

List<Widget> screenList = const[
  // 0
  LoginScreen(),
  // 1
  CadastroUserLogin(),
  // 2
  TelaPrincipal(),
  // 3
  CreditosScreen(),
  // 4 
  CadastroScreen()
];