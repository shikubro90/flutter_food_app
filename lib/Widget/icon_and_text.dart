import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/small_text.dart';

class IconAndText extends StatelessWidget {

  final IconData iconData;
  final String text;
  final Color iconColor;
  final Color textColor;

  const IconAndText({super.key,
    required this.iconData,
    required this.text,
    required this.iconColor,
    required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text)
      ],
    );
  }
}
