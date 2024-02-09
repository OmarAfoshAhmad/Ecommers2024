import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  final String img;
  const CustomLogoAuth({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img,
      width: 180,
    );
  }
}
