import 'package:appnutricao/components/cadastro_user_form.dart';
import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';
import 'package:appnutricao/components/cadastro_alimento_form.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

List<Widget> cadastroForms = const[
  CadastroUserForm(),
  CadastroAlimentoForm(),
  Text('TEXTO 3')
];

int _buttonPressed = 0;

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
                          onPressed: () {
                            setState(() {
                              _buttonPressed = 0;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  colorsTwo.colorScheme.primary)),
                          child: const Text('Usuário'),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _buttonPressed = 1;
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    colorsTwo.colorScheme.primary)),
                            child: const Text('Alimento')),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _buttonPressed = 2;
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    colorsTwo.colorScheme.primary)),
                            child: const Text('Cardápio')),
                      ],
                    ),
                     Padding(
                        padding: const EdgeInsets.all(20),
                        child: cadastroForms.elementAt(_buttonPressed)
                        //CadastroAlimentoForm()
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
