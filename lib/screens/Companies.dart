import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Companies extends StatefulWidget {
  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  bool _checkBox = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(padding: EdgeInsets.all(16), children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Nome Completo"),
            // ignore: missing_return
            validator: (text) {
              // if (text.isEmpty) return "Preencha!";
            },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(hintText: "Nome da Empresa"),
            // ignore: missing_return
            validator: (text) {
              // if (text.isEmpty) return "Preencha";
            },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(hintText: "E-mail Corporativo"),
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
              // if (text.isEmpty) return "Preencha ";
            },
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(hintText: "Segmento de Atuação"),
            // ignore: missing_return
            validator: (text) {
              // if (text.isEmpty) return "Preencha ";
            },
          ),
          SizedBox(height: 35.0),
          CheckboxListTile(
            title: Text(
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
          SizedBox(height: 30.0),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff00C29D),
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    )),
                child: Text("Cadastrar"),
                onPressed: () {},
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
