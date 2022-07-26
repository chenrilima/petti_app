import 'package:flutter/material.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';
import 'package:petti_app/presentation/widgets/text_formfield.dart';

class RegisterCompany extends StatefulWidget {
  const RegisterCompany({Key? key}) : super(key: key);

  @override
  _RegisterCompanyState createState() => _RegisterCompanyState();
}

class _RegisterCompanyState extends State<RegisterCompany> {
  final _image = true;

  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.width;
    return Background(
      title:
          'Você esta a um passo de encontrar os melhor funcionários para sua empresa',
      content: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ContainerCard(
          width: widscreen * 1,
          content: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormFields(
                  hintText: 'Nome da empresa',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Telefone',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Endereço',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Segmento de atuação',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Serviços prestados',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Horário de atendimento',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Site / Redes sociais',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Breve descrição da vaga',
                  onChanged: () {},
                ),
                GestureDetector(
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    await getImage();
                  },
                  child: Center(
                    child: _image == null
                        ? Stack(
                            children: <Widget>[
                              Center(
                                child: CircleAvatar(
                                  radius: 80.0,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                              const Center(
                                child: Icon(
                                  Icons.photo_album_outlined,
                                  size: 120,
                                ),
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.grey[200],
                                  child: const ClipOval(
                                    child: Align(
                                      heightFactor: 0.8,
                                      widthFactor: 2,
                                      child: Text('Foto'),
                                    ),
                                  ),
                                ),
                                Buttons(
                                  width: 15,
                                  text: 'Carregar Foto',
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 29),
                  child: Buttons(
                    width: 90,
                    text: 'Cadastrar Vaga',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    // UserService userRestSrv = UserService();
    //
    // PickedFile image = await ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 50);
    //
    // if (image != null) {
    //   setState(() {
    //     _image = File(image.path);
    //   });
    //
    //   final bytes = File(image.path).readAsBytesSync();
    //
    //   String img64 = base64Encode(bytes);
    //   var responseProfileImage = await userRestSrv.updateImage(userId, img64);
    //
    //   if (responseProfileImage != null && responseProfileImage.data['ResponseCode'] == "00")
    //     showMessage('Profile Image not uploaded', false);
    // }
  }
}
