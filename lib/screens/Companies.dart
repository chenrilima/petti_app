import 'package:flutter/material.dart';

class Companies extends StatefulWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  final bool _checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(padding: const EdgeInsets.all(16), children: [
          TextFormField(
            decoration: const InputDecoration(hintText: "Nome Completo"),
            // ignore: missing_return
            validator: (text) {
              return null;

              // if (text.isEmpty) return "Preencha!";
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(hintText: "Nome da Empresa"),
            // ignore: missing_return
            validator: (text) {
              return null;

              // if (text.isEmpty) return "Preencha";
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(hintText: "E-mail Corporativo"),
            // ignore: missing_return
            validator: (text) {
              return null;

              // if (text.isEmpty) return "Preencha";
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(hintText: "Telefone"),
            // ignore: missing_return
            validator: (text) {
              return null;

              // if (text.isEmpty) return "Preencha ";
            },
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(hintText: "Segmento de Atuação"),
            // ignore: missing_return
            validator: (text) {
              return null;

              // if (text.isEmpty) return "Preencha ";
            },
          ),
          const SizedBox(height: 35.0),
          CheckboxListTile(
            title: const Text(
              "Li e concordo com os termos e Condições e Política de Privacidade.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            value: _checkBox, onChanged: (bool? value) {},
            // onChanged: (bool value) {
            //   setState(() {
            //     _checkBox = value;
            //   });
            // },
          ),

          //child: screens[_currentIndex],
          const SizedBox(height: 30.0),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff00C29D),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 15),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    )),
                child: const Text("Cadastrar"),
                onPressed: () {},
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
