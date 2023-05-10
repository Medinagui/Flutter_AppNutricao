import 'package:appnutricao/components/buttons/cadastro_alimento_button.dart';
import 'package:appnutricao/components/forms/imagepicker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';
import 'package:appnutricao/components/classes/alimento.dart';
import '../../db/alimentos_database.dart';

class CadastroAlimentoForm extends StatefulWidget {
  const CadastroAlimentoForm({super.key});

  @override
  State<CadastroAlimentoForm> createState() => _CadastroAlimentoFormState();
}

class _CadastroAlimentoFormState extends State<CadastroAlimentoForm> {
  String? categoriaRefeicao;
  String? tipoAlimento;
  Alimento? alimentoCadastrado = Alimento(nome: 'nome', foto: imageSelected!, categoria: 'categoria', tipo: 'tipo');

  @override
  void initState(){
    super.initState();
  }

  Future createAlimento(Alimento alimentoCadastrado) async {
    alimentoCadastrado.foto = imageSelected!;
    return AlimentosDatabase.instance.create(alimentoCadastrado);
  }

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
          onChanged: (val){
            setState(() {
              alimentoCadastrado!.nome = val;
            });
          },
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
                      alimentoCadastrado!.categoria = val!;
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
                      alimentoCadastrado!.tipo = val!;
                      tipoAlimento = val.toString();
                    });
                  }),
            ),
          ),
        ),
        CadastroAlimentoButton(cadastro: createAlimento(alimentoCadastrado!),)
      ],
    ));
  }
}