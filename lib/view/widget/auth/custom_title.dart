import 'package:ecommers2024/core/constant/font.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;

  const CustomTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: AppFont.primaryFontHeader),
    );
  }
}
