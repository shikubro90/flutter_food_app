import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

class BigText extends StatelessWidget {
   BigText({super.key,
      required this.text,
      this.color = const Color(0xFF89dad0),
      this.fontWeight = FontWeight.w400,
      this.overflow=TextOverflow.ellipsis,
      this.size =20});

  final String text;
  final Color? color;
  TextOverflow overflow;
  double size;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: Dimention.bigTextFontSize,
        fontWeight: fontWeight,
          fontFamily: 'Roboto'
      ),
    );
  }
}
