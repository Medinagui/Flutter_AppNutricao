import 'package:appnutricao/components/cadastro_user_form.dart';
import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: colorsOne.colorScheme.primary,
        title: const Text('Cadastro', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height * 0.872,
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'O que deseja cadastrar?',
                        textAlign: TextAlign.center,
                        style: myTextThemes.textTheme.headlineSmall,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          child: const Text('Usuário'),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    colorsTwo.colorScheme.primary)),
                            child: const Text('Alimento')),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    colorsTwo.colorScheme.primary)),
                            child: const Text('Cardápio')),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: CadastroUserForm(),
                    )
                  ]),
            ),
          ),
        ),
      ),
      backgroundColor: colorsOne.colorScheme.secondary,
    );
  }
}
