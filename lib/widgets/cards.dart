import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  Widget? content;
  double? width;
  double? height;

  ContainerCard({this.content, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
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
