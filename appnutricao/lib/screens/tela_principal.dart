import 'package:appnutricao/components/screens_list.dart';
import 'package:appnutricao/screens/creditos.dart';
import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';
import 'package:appnutricao/components/principal_button.dart';
import 'package:appnutricao/components/screens_list.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
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
                       PrincipalScreenButton(
                      icon: Icons.app_registration,
                      label: 'Cadastro',
                      screen: screenList[0],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrincipalScreenButton(
                      icon: Icons.search,
                      label: 'Consulta',
                      screen: screenList[0],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrincipalScreenButton(
                      icon: Icons.share,
                      label: 'Compartilhar',
                      screen: screenList[3],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrincipalScreenButton(
                      icon: Icons.emoji_events,
                      label: 'Créditos',
                      screen: screenList[3],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrincipalScreenButton(
                      icon: Icons.logout,
                      label: 'Logout',
                      screen: screenList[0],
                    ),
                  ]),
            ),
          ),
        ),
      ]),
      backgroundColor: colorsOne.colorScheme.secondary,
    );
  }
}
