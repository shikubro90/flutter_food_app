import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({super.key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.fontWeight = FontWeight.w400,
    this.overflow=TextOverflow.ellipsis,
    this.height=1.2,
    this.size =20});

  final String text;
  final Color? color;
  TextOverflow overflow;
  double size;
  FontWeight fontWeight;
  double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        height: height,
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'Roboto'
      ),
    );
  }
}
