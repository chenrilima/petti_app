import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:petti_app/presentation/theme/app_theme.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';
import 'package:petti_app/presentation/widgets/text_formfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Background(
        title: 'Cadastro',
        content: Padding(
          padding: const EdgeInsets.only(top: 28, bottom: 10),
          child: ContainerCard(
            width: double.infinity,
            content: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppTheme.images.pawDog,
                        width: 84,
                        height: 84,
                      ),
                      const Text(
                        'Petti',
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'Que bom ver você por aqui, faça login e usufrua da maior plataforma de emprego Pet do Brasil.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormFields(
                    hintText: 'Nome',
                    onChanged: () {},
                  ),
                  TextFormFields(
                    hintText: 'E-mail',
                    onChanged: () {},
                  ),
                  TextFormFields(
                    hintText: 'Senha',
                    onChanged: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 25,
                        child: Checkbox(
                          value: check,
                          onChanged: (value) {
                            setState(() {
                              check = !check;
                            });
                          },
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Eu li e concordo com os ',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Termos e condições',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                              TextSpan(
                                  text: ' e\n',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                              TextSpan(
                                  text: 'Politica de Privacidade',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          AppTheme.images.facebook,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      GestureDetector(
                        child: Image.asset(
                          AppTheme.images.google,
                          width: 50,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Buttons(
                    width: 80,
                    text: 'Cadastrar',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
