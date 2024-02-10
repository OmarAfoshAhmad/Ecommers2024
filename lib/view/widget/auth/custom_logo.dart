import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  final String img;
  const CustomLogoAuth({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Image.asset(
        img,
        width: 75,
      ),
    );
  }
}
