import 'package:appnutricao/components/login_cadastro_form.dart';
import 'package:flutter/material.dart';
import '../themes/theme.dart';

class CadastroUserLogin extends StatefulWidget {
  const CadastroUserLogin({super.key});

  @override
  State<CadastroUserLogin> createState() => _CadastroUserLoginState();
}

class _CadastroUserLoginState extends State<CadastroUserLogin> {
  

  @override
  Widget build(BuildContext context) {
    return
        // BackGround
        Scaffold(
      body: Column(
        children: const <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 15,
            child: SizedBox(
              height: 1,
            ),
          ),
          // CARD LOGIN
          Flexible(
              fit: FlexFit.tight,
              flex: 70,
              child: Card(
                margin:  EdgeInsets.fromLTRB(25, 0, 25, 0),
                elevation: 10,
                child: LoginCadastroForm()
              )),
           Flexible(
              fit: FlexFit.tight,
              flex: 15,
              child: SizedBox(
                height: 1,
              )),
        ],
      ),
      backgroundColor: colorsOne.colorScheme.primary,
    );
  }
}
