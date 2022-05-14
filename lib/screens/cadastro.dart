import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(hintText: "Nome"),
              // ignore: missing_return
              validator: (text) {
                // if (text?.isEmpty) return "Preencha!";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(hintText: "E-mail"),
              // ignore: missing_return
              validator: (text) {
                // if (text.isEmpty) return "Preencha";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(hintText: "Telefone"),
              // ignore: missing_return
              validator: (text) {
                // if (text.isEmpty) return "Preencha";
              },
            ),
            SizedBox(height: 90.0),
            Column(children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff00C29D),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    )),
                child: Text("Criar Conta"),
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
