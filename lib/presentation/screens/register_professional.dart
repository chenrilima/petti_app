import 'package:flutter/material.dart';
import 'package:petti_app/presentation/widgets/background.dart';
import 'package:petti_app/presentation/widgets/buttons.dart';
import 'package:petti_app/presentation/widgets/cards.dart';
import 'package:petti_app/presentation/widgets/text_formfield.dart';

class RegisterProfessional extends StatefulWidget {
  const RegisterProfessional({Key? key}) : super(key: key);

  @override
  RegisterProfessionalState createState() => RegisterProfessionalState();
}

class RegisterProfessionalState extends State<RegisterProfessional> {
  final _image = true;

  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.width;
    return Background(
      title: 'Você esta á um passo de encontrar o emprego dos seus sonhos',
      content: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ContainerCard(
          width: widscreen * 1,
          content: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormFields(
                  hintText: 'CRMV',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Especialidades',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Telefone',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Gênero',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Cidade',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Estado',
                  onChanged: () {},
                ),
                TextFormFields(
                  hintText: 'Breve descrição sobre seu perfil e objetivos',
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
                    width: 100,
                    text: 'Cadastrar CV',
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
