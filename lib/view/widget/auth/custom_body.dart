import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:flutter/material.dart';

class CustomBodyAuth extends StatelessWidget {
  final String body;
  const CustomBodyAuth({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: const TextStyle(
          height: 2, fontSize: AppFont.primaryFontBody, color: AppColor.grey),
      textAlign: TextAlign.center,
    );
  }
}
