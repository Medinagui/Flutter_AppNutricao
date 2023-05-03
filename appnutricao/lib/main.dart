import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const AppNutricao());

class AppNutricao extends StatelessWidget {
  const AppNutricao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                child: Center(child: Text('YEAH BUDDY!')),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                child: Center(child: Text('YEAH BUDDY!')),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                child: Center(child: Text('YEAH BUDDY!')),
              ),
            ),
          ]),
    ));
  }
}
