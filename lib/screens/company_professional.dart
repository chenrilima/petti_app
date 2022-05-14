import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../utils/param.dart';
import '../widgets/background.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';

class CompanyProfessional extends StatefulWidget {
  @override
  _CompanyProfessionalState createState() => _CompanyProfessionalState();
}

class _CompanyProfessionalState extends State<CompanyProfessional> {
  @override
  Widget build(BuildContext context) {
    Param param = Provider.of<Param>(context, listen: false);
    return Background(
      title: param.company == true ? 'Empresa' : 'Profisional',
      content: Padding(
        padding: const EdgeInsets.only(top: 36),
        child: ContainerCard(
          width: double.infinity,
          content: Container(
            padding: const EdgeInsets.only(top: 35, bottom: 30),
            child: Column(
              children: [
                Image.asset(
                  param.company == true
                      ? "images/img-company.png"
                      : "images/img-professional.png",
                  width: 217,
                  height: 153,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 296,
                  child: Text(
                    'Ainda não possui cadastro na maior plataforma de emprego Pet do Brasil?',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: 296,
                  child: Text(
                    'Não perca mais tempo, cadastre-se e encontre o emprego dos seus sonhos!!!',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 62,
                ),
                Buttons(
                  width: 90,
                  text: 'Cadastrar',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
