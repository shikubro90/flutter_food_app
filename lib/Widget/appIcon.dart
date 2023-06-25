import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {

  AppIcon({super.key, required this.icon});

  final IconData icon;
  Color iconColor = Color(0xFF756df4);
  Color backgroundColor = Color(0xFFfcf4e4);
  double size = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

      ),
      child: Icon(
          icon
      ),
    );
  }
}
