import 'package:flutter/material.dart';


void main(List<String> args) => runApp(const NutricaoApp());

class NutricaoApp extends StatefulWidget {
  const NutricaoApp({super.key});

  @override
  State<NutricaoApp> createState() => _NutricaoAppState();
}

class _NutricaoAppState extends State<NutricaoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Teste"),
        ),
        body: const Center(child: Text("Texte 2")),
      ),
    );
  }
}