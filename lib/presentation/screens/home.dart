import 'package:flutter/material.dart';
import 'package:petti_app/presentation/routes/app_navigator.dart';
import 'package:petti_app/presentation/theme/app_styles.dart';

import 'package:petti_app/presentation/theme/app_theme.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';

import 'package:petti_app/utils/param.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
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
                style: AppTheme.textStyles.styleText(
                  TypeFont.barlowBold,
                  AppTheme.colors.white,
                  24,
                  FontWeight.w400,
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
                  AppTheme.images.filter,
                  width: 50,
                  height: 50,
                ),
                Text(
                  'Filtrar',
                  style: AppTheme.textStyles.styleText(
                    TypeFont.barlowBold,
                    AppTheme.colors.white,
                    14,
                    FontWeight.w400,
                  ),
                )
              ],
            ),
            onTap: () {
              AppNavigation.navigateToNamed(
                  context, "/filter", NavigationType.pushNamedAndRemoveUntil);
            },
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    param.company = false;
                  });
                  AppNavigation.navigateToNamed(context, "/companyProfessional",
                      NavigationType.pushNamedAndRemoveUntil);
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
                                AppTheme.images.woman,
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
                                  'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                  style: AppTheme.textStyles.styleText(
                                    TypeFont.barlowBold,
                                    AppTheme.colors.black,
                                    10,
                                    FontWeight.w400,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 41.0),
                              child: Buttons(
                                  width: 15,
                                  heigth: 10,
                                  text: 'Entrar em contato',
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 5),
                                        () {
                                      //_showDialog();
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
                  AppNavigation.navigateToNamed(context, "/companyProfessional",
                      NavigationType.pushNamedAndRemoveUntil);
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
                                AppTheme.images.vetLife,
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
                                style: AppTheme.textStyles.styleText(
                                  TypeFont.barlowBold,
                                  AppTheme.colors.black,
                                  12,
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
                                  'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                  style: AppTheme.textStyles.styleText(
                                    TypeFont.barlowBold,
                                    AppTheme.colors.white,
                                    10,
                                    FontWeight.w400,
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
                              AppTheme.images.woman,
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
                              style: AppTheme.textStyles.styleText(
                                TypeFont.barlowBold,
                                AppTheme.colors.black,
                                12,
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
                                'Bla sobre a pessoa, uma descrição curta sobre suas competências.',
                                style: AppTheme.textStyles.styleText(
                                  TypeFont.barlowBold,
                                  AppTheme.colors.white,
                                  10,
                                  FontWeight.w400,
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
}

//   void _showDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         // return object of type Dialog
//         return AlertDialog(
          
//           contentPadding: const EdgeInsets.all(16),
//           content: SizedBox(
//             width: 270,
//             height: 220,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     "assets/images/img-perfil.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           actions: <Widget>[
//             // usually buttons at the bottom of the dialog
//             Buttons(
//                 width: 42,
//                 heigth: 10,
//                 text: 'Entrar',
//                 onPressed: () {
//                   AppNavigation.navigateToNamed(context, "/login",
//                       NavigationType.pushNamedAndRemoveUntil);
//                 }),
//             const SizedBox(
//               width: 5,
//             ),
//             Buttons(
//                 width: 30,
//                 heigth: 10,
//                 text: 'Cadastrar',
//                 onPressed: () {
//                   AppNavigation.navigateToNamed(context, "/register",
//                       NavigationType.pushNamedAndRemoveUntil);
//                 }),
//           ],
//         );
//       },
//     );
//   }
// }
