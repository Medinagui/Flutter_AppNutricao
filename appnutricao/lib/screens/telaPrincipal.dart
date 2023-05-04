import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorsOne.colorScheme.primary,
        title: const Text('Tela Principal', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Card(
            margin: const EdgeInsets.fromLTRB(25, 20, 25, 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  ElevatedButton(onPressed: () {} ,child: const Text("Tela 1")),
                  ElevatedButton(onPressed: () {} ,child: const Text("Tela 2")),
                  ElevatedButton(onPressed: () {} ,child: const Text("Tela 3")),
                  ElevatedButton(onPressed: () {} ,child: const Text("Tela 4")),
                  ElevatedButton(onPressed: () {} ,child: const Text("Tela 5")),
                ]),
          ),
        ),
      ]),
      backgroundColor: colorsTwo.colorScheme.secondary,
    );
  }
}
