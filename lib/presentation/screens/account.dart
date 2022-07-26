import 'package:flutter/material.dart';
import 'package:petti_app/presentation/theme/app_theme.dart';
import 'package:petti_app/theme/app_styles.dart';

import 'cadastro.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      AppTheme.images.pawDog,
                      width: 60,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 10),
                    child: RaisedButton(
                      color: const Color(0xff00C29D),
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        AppNavigation.navigateToNamed(context, "/register",
                            NavigationType.pushNamedAndRemoveUntil);
                      },
                      child: Text(
                        "Criar Conta",
                        style: AppTheme.textStyles.styleText(
                          TypeFont.barlowBold,
                          AppTheme.colors.white,
                          16,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 10),
                    child: RaisedButton(
                      color: const Color(0xff00C29D),
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Entrar",
                        style: AppTheme.textStyles.styleText(
                          TypeFont.barlowBold,
                          AppTheme.colors.white,
                          20,
                          FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}