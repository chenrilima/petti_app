import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petti_app/theme/app_theme.dart';

import '../widgets/background.dart';
import '../widgets/cards.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'Perfil',
      content: Padding(
        padding: const EdgeInsets.only(top: 36),
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                itemProfile(
                    icon: Icons.edit_outlined, text: 'Editar meu perfil'),
                itemProfile(
                    icon: Icons.admin_panel_settings_outlined,
                    text: 'Alteração de senha'),
                itemProfile(
                    icon: Icons.sms_outlined, text: 'Dúvidas e atendimento'),
                itemProfile(
                    icon: Icons.assignment_ind_outlined, text: 'Termos de uso'),
                itemProfile(
                    icon: Icons.assignment, text: 'Politicia de privacidade'),
                itemProfile(
                    icon: Icons.star_border_outlined,
                    text: 'Avalie nosso aplicativo'),
                itemProfile(icon: Icons.exit_to_app_outlined, text: 'Sair'),
              ],
            )),
      ),
    );
  }

  ContainerCard itemProfile({IconData? icon, String? text}) {
    return ContainerCard(
      width: double.infinity,
      height: 70,
      content: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text!,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppTheme.colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
