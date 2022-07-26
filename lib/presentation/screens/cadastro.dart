import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(hintText: "Nome"),
              // ignore: missing_return
              validator: (text) {
                // if (text?.isEmpty) return "Preencha!";
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(hintText: "E-mail"),
              // ignore: missing_return
              validator: (text) {
                // if (text.isEmpty) return "Preencha";
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(hintText: "Telefone"),
              // ignore: missing_return
              validator: (text) {
                // if (text.isEmpty) return "Preencha";
              },
            ),
            const SizedBox(height: 90.0),
            Column(children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff00C29D),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    )),
                child: const Text("Criar Conta"),
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
