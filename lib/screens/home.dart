import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petti_app/screens/register.dart';

import 'package:provider/provider.dart';

import '../utils/appcolors.dart';
import '../utils/appfonts.dart';
import '../utils/param.dart';
import '../widgets/background.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';
import '../widgets/text_formfield.dart';
import 'company_professional.dart';
import 'filter.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.width;
    Param param = Provider.of<Param>(context, listen: false);

    return Background(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 24),
            width: 272,
            height: 120,
            child: Center(
              child: Text(
                'BEM VINDO A MAIOR PLATAFORMA DE EMPREGO PET DO BR',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/filter.png",
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    'Filtrar',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Filter()),
              );
            },
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    param.company = false;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompanyProfessional()),
                  );
                },
                child: ContainerCard(
                  width: widscreen * 1,
                  content: Container(
                    padding: const EdgeInsets.all(11),
                    height: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 110,
                              height: 50,
                              child: Image.asset(
                                "images/womam.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7),
                              width: 135,
                              height: 62,
                              child: Text(
                                'Fulana'
                                '\nCRMV - 1234-5'
                                '\nClinica Geral Ortopedista'
                                '\nSão Bernado do Campo - SP',
                                style: AppFonts.f12w400black,
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  width: 175,
                                  child: Text(
                                    'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: AppColors.black,
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 41.0),
                                child: Buttons(
                                  width: 15,
                                  heigth: 10,
                                  text: 'Entrar em contato',
                                  onPressed: () => _showDialog(),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    param.company = true;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompanyProfessional()),
                  );
                },
                child: ContainerCard(
                  width: widscreen * 1,
                  content: Container(
                    padding: const EdgeInsets.all(11),
                    height: 135,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 110,
                              height: 50,
                              child: Image.asset(
                                "images/vetlife.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7),
                              width: 135,
                              height: 60,
                              child: Text(
                                'Vet Life'
                                '\nEndereço'
                                '\nServiços prestados'
                                '\nHorario de atendimento',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                width: 175,
                                child: Text(
                                  'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppColors.black,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Buttons(
                                width: 15,
                                heigth: 10,
                                text: 'Entrar em contato',
                                onPressed: () {},
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ContainerCard(
                width: widscreen * 1,
                content: Container(
                  padding: const EdgeInsets.all(11),
                  height: 135,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 110,
                            height: 50,
                            child: Image.asset(
                              "images/womam.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 7),
                            width: 135,
                            height: 60,
                            child: Text(
                              'Fulana'
                              '\nCRMV - 1234-5'
                              '\nClinica Geral Ortopedista'
                              '\nSão Bernado do Campo - SP',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: 175,
                              child: Text(
                                'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: AppColors.black,
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Buttons(
                              width: 15,
                              heigth: 10,
                              text: 'Entrar em contato',
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Container(
            width: 270,
            height: 220,
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    "images/img-perfil.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            Buttons(
                width: 42,
                heigth: 10,
                text: 'Entrar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                }),
            SizedBox(
              width: 5,
            ),
            Buttons(
                width: 30,
                heigth: 10,
                text: 'Cadastrar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                }),
          ],
        );
      },
    );
  }
}
