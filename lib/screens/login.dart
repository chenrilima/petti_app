import 'package:flutter/material.dart';
import 'package:petti_app/screens/recover_password.dart';

import '../widgets/background.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';
import '../widgets/text_formfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Background(
        title: 'Login',
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
                        "images/pawdogicon.png",
                        width: 84,
                        height: 84,
                      ),
                      Text(
                        'Petti',
                      )
                    ],
                  ),
                  Container(
                    width: 238,
                    child: Text(
                      'Que bom ver você por aqui, faça login e usufrua da maior plataforma de emprego Pet do Brasil.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormFields(
                    hintText: 'E-mail',
                    onChanged: () {},
                  ),
                  TextFormFields(
                    hintText: 'Senha',
                    onChanged: () {},
                  ),
                  GestureDetector(
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Esqueceu sua senha?')),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecoverPassword()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          "images/facebook.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      GestureDetector(
                        child: Image.asset(
                          "images/google.png",
                          width: 50,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Buttons(
                    width: 90,
                    text: 'Entrar',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
