import 'package:flutter/material.dart';

import '../themes/theme.dart';

class CreditosScreen extends StatelessWidget {
  const CreditosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: colorsOne.colorScheme.primary,
        title: const Text('Créditos', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                elevation: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      margin: const EdgeInsets.all(10),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                              'Guilherme Medina de Castro',
                              style: myTextThemes.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            )),),
                            Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                              'Karen Isabel de Sousa',
                              style: myTextThemes.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            )),),
                            Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                              'Luís Gustavo Gomes Lopes',
                              style: myTextThemes.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            )),),
                            Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                              'Luzia de Fatima dos Santos Tozetto',
                              style: myTextThemes.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            )),),
                            Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                              'Tiago Figueira',
                              style: myTextThemes.textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            )))
                          ],
                        ),
                      ),
                    ),
                    const Card(
                      child: Text('Botãozinho'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: colorsOne.colorScheme.secondary,
    );
  }
}
