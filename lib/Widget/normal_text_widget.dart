import 'package:flutter/material.dart';

class NormalTextWidget extends StatelessWidget {
     NormalTextWidget(
      {super.key,
        required this.text,
        this.color = const Color(0xFFccc7c5),
        this.fontWeight = FontWeight.w400,
        this.size =12});

  final String text;
  final Color? color;
  double size;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(

          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'Roboto',
      ),
    );
  }
}
