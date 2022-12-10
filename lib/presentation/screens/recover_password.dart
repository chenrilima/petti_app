import 'package:flutter/material.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';
import 'package:petti_app/presentation/widgets/text_formfield.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  RecoverPasswordState createState() => RecoverPasswordState();
}

class RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    return Background(
        title: 'Recuperar Senha',
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
                      const Text(
                        'Petti',
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 238,
                    child: Text(
                      'Ah não, esqueci minha senha =/',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 238,
                    padding: const EdgeInsets.only(top: 32),
                    child: const Text(
                      'Não se preocupe, nos informe seu e-mail para enviarmos o link para redefinição de uma nova senha.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  TextFormFields(
                    hintText: 'E-mail',
                    onChanged: () {},
                  ),
                  const SizedBox(
                    height: 63,
                  ),
                  Buttons(
                    width: 90,
                    text: 'Enviar',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
