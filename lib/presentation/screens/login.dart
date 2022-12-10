import 'package:flutter/material.dart';
import 'package:petti_app/presentation/screens/recover_password.dart';
import 'package:petti_app/presentation/theme/app_theme.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';
import 'package:petti_app/presentation/widgets/text_formfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
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
                    width: 238,
                    child: Text(
                      'Que bom ver você por aqui, faça login e usufrua da maior plataforma de emprego Pet do Brasil.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
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
                    child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Esqueceu sua senha?')),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecoverPassword()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 21,
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
