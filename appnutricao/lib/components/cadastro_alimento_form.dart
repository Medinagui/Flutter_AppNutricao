import 'package:appnutricao/components/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';

class CadastroAlimentoForm extends StatefulWidget {
  const CadastroAlimentoForm({super.key});

  @override
  State<CadastroAlimentoForm> createState() => _CadastroAlimentoFormState();
}

class _CadastroAlimentoFormState extends State<CadastroAlimentoForm> {
  String? categoriaRefeicao;
  String? tipoAlimento;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const MyImagePicker(),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Insira o nome do alimento';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              hintText: 'Nome do Alimento',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: colorsTwo.colorScheme.secondary),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  iconSize: 30,
                  borderRadius: BorderRadius.circular(10),
                  isExpanded: true,
                  hint: const Text('Categoria da Refeição'),
                  value: categoriaRefeicao,
                  items: const [
                    DropdownMenuItem(
                        value: 'Café da Manhã', child: Text('Café da Manhã')),
                    DropdownMenuItem(value: 'Almoço', child: Text('Almoço')),
                    DropdownMenuItem(value: 'Janta', child: Text('Janta')),
                  ],
                  onChanged: (val) {
                    setState(() {
                      categoriaRefeicao = val.toString();
                    });
                  }),
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  iconSize: 30,
                  borderRadius: BorderRadius.circular(10),
                  isExpanded: true,
                  hint: const Text('Tipo do Alimento'),
                  value: tipoAlimento,
                  items: const [
                    DropdownMenuItem(value: 'Bebida', child: Text('Bebida')),
                    DropdownMenuItem(
                        value: 'Proteína', child: Text('Proteína')),
                    DropdownMenuItem(
                        value: 'Carboidrato', child: Text('Carboidrato')),
                    DropdownMenuItem(value: 'Fruta', child: Text('Fruta')),
                    DropdownMenuItem(value: 'Grão', child: Text('Grão')),
                  ],
                  onChanged: (val) {
                    setState(() {
                      tipoAlimento = val.toString();
                    });
                  }),
            ),
          ),
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
