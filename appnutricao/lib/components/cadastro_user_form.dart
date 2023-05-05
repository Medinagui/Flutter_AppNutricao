import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';

class CadastroUserForm extends StatelessWidget {
  const CadastroUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Insira o seu nome';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              hintText: 'Nome',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: colorsTwo.colorScheme.secondary),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Insira o seu email';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: colorsTwo.colorScheme.secondary),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Insira a sua senha';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              hintText: 'Senha',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: colorsTwo.colorScheme.secondary),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Data Selecionada:\n\ndd/MM/yyyy', textAlign: TextAlign.center,),
            TextButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1930),
                      lastDate: DateTime.now(),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: colorsTwo.colorScheme,
                          ),
                          child: child!,
                        );
                      });
                },
                child: const Text('Selecione a data')),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(colorsTwo.colorScheme.primary)),
              child: const Text('Cadastrar'),
            ),
          ],
        )
      ],
    ));
  }
}
