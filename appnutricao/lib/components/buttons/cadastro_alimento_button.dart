import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';

class CadastroAlimentoButton extends StatelessWidget {
  
  
  
  const CadastroAlimentoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(colorsOne.colorScheme.secondary)),
          child: const Text('Cadastrar'),
        ),
      ],
    );
  }
}
