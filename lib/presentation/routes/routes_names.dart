import 'package:flutter/cupertino.dart';
import 'package:petti_app/all_screens.dart';
import 'package:petti_app/presentation/screens/account.dart';
import 'package:petti_app/presentation/screens/cadastro.dart';
import 'package:petti_app/presentation/screens/companies.dart';
import 'package:petti_app/presentation/screens/company_professional.dart';
import 'package:petti_app/presentation/screens/filter.dart';
import 'package:petti_app/presentation/screens/login.dart';
import 'package:petti_app/presentation/screens/recover_password.dart';
import 'package:petti_app/presentation/screens/register.dart';
import 'package:petti_app/presentation/screens/register_company.dart';
import 'package:petti_app/presentation/screens/register_professional.dart';

class RoutesName {
  static Map<String, Widget Function(BuildContext)> routesName() {
    return {
      "/allScreens": (context) => const AllScreens(),
      "/account": (context) => const Account(),
      "/cadastro": (context) => const Cadastro(),
      "/companies": (context) => const Companies(),
      "/companyProfessional": (context) => const CompanyProfessional(),
      "/filter": (context) => Filter(),
      "/login": (context) => const Login(),
      "/register": (context) => const Register(),
      "/recoverPassword": (context) => const RecoverPassword(),
      "/registerCompany": (context) => const RegisterCompany(),
      "/registerProfessional": (context) => const RegisterProfessional(),
    };
  }
}
