import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  final String body;
  final String img;
  const CustomHeader(
      {super.key, required this.text, required this.body, required this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            img,
            width: 180,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFont.primaryFontHeader),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            body,
            style: const TextStyle(
                height: 2,
                fontSize: AppFont.primaryFontBody,
                color: AppColor.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
