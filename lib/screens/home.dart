import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petti_app/theme/app_styles.dart';
import 'package:petti_app/theme/app_theme.dart';

import 'package:provider/provider.dart';

import '../utils/param.dart';
import '../widgets/background.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';

import 'company_professional.dart';
import 'filter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

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
                  color: AppTheme.colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
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
                    color: AppTheme.colors.white,
                  ),
                )
              ],
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
                        builder: (context) => const CompanyProfessional()),
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
                            SizedBox(
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
                                '\nS??o Bernado do Campo - SP',
                                style: AppTheme.textStyles.styleText(
                                  TypeFont.barlowRegular,
                                  AppTheme.colors.white,
                                  16,
                                  FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: 175,
                                child: Text(
                                  'Bla sobre a pessoa, uma descri????o curta sobre suas compet??ncias.',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppTheme.colors.black,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 41.0),
                              child: Buttons(
                                  width: 15,
                                  heigth: 10,
                                  text: 'Entrar em contato',
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 3),
                                        () {
                                      _showDialog();
                                    });
                                  }),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                        builder: (context) => const CompanyProfessional()),
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
                            SizedBox(
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
                                '\nEndere??o'
                                '\nServi??os prestados'
                                '\nHorario de atendimento',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppTheme.colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: 175,
                                child: Text(
                                  'Bla sobre a pessoa, uma descri????o curta sobre suas compet??ncias.',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppTheme.colors.black,
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
              const SizedBox(
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
                          SizedBox(
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
                              '\nS??o Bernado do Campo - SP',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppTheme.colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: 175,
                              child: Text(
                                'Bla sobre a pessoa, uma descri????o curta sobre suas compet??ncias.',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: AppTheme.colors.black,
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: SizedBox(
            width: 270,
            height: 220,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "images/img-perfil.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            Buttons(
                width: 42,
                heigth: 10,
                text: 'Entrar',
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Login()),
                  // );
                }),
            const SizedBox(
              width: 5,
            ),
            Buttons(
                width: 30,
                heigth: 10,
                text: 'Cadastrar',
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Register()),
                  // );
                }),
          ],
        );
      },
    );
  }
}
