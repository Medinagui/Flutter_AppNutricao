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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 10,
                      child: Stack(
                        children: [Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          colorsTwo.colorScheme.primary)),
                                          onPressed: () {},
                                  child: const Text("teste"),),
                            )
                          ],
                        ),]
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 10,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  myTextThemes.textTheme.titleLarge),
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          icon: const Icon(
                            Icons.app_registration,
                            size: 50,
                          ),
                          onPressed: () {},
                          label: const Text("Consulta")),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 10,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  myTextThemes.textTheme.titleLarge),
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          icon: const Icon(
                            Icons.app_registration,
                            size: 50,
                          ),
                          onPressed: () {},
                          label: const Text("Compartilhar")),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 10,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  myTextThemes.textTheme.titleLarge),
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          icon: const Icon(
                            Icons.app_registration,
                            size: 50,
                          ),
                          onPressed: () {},
                          label: const Text("Créditos")),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 10,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  myTextThemes.textTheme.titleLarge),
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          icon: const Icon(
                            Icons.app_registration,
                            size: 50,
                          ),
                          onPressed: () {},
                          label: const Text("Logout")),
                    ),
                  ]),
            ),
          ),
        ),
      ]),
      backgroundColor: colorsTwo.colorScheme.secondary,
    );
  }
}
