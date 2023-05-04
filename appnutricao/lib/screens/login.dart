import 'package:appnutricao/components/login_form.dart';
import 'package:flutter/material.dart';
import '../themes/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

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
                child: LoginForm() 
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
