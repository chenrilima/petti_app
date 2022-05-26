import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  Widget? content;
  double? width;
  double? height;

  ContainerCard({Key? key, this.content, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: content,
      ),
    );
  }
}
