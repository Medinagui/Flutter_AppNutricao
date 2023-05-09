import 'package:flutter/material.dart';
import 'package:appnutricao/themes/theme.dart';
import 'package:appnutricao/components/forms//cadastro_alimento_form.dart';
import '../components/classes/alimento.dart';


class TestesScreen extends StatefulWidget {
  const TestesScreen({super.key});

  @override
  State<TestesScreen> createState() => _TestesScreenState();
}

List<Alimento> listaTeste = [];

class _TestesScreenState extends State<TestesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: colorsTwo.colorScheme.secondary,
        title: const Text('Cadastro', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height * 0.872,
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CadastroAlimentoForm(),
                  Expanded(child: ListView.builder(
                  itemCount: listaTeste.length,
                  itemBuilder: (context, index) {
                  final Alimento exemplo = listaTeste[index];

                  return ListTile(
                    subtitle: Text('${exemplo.tipo} - ${exemplo.categoria}'),
                    title: Text(exemplo.nome),
                  );
                }))
                ]),
          ),
        ),
      ),
      backgroundColor: colorsOne.colorScheme.primary,
    );
  }
}
