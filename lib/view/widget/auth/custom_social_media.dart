import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:flutter/material.dart';

class CustomSocialMedia extends StatelessWidget {
  const CustomSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColor.iconBackcolor,
            ),
            padding: const EdgeInsets.all(10),
            child: Image.asset(AppImageAsset.google)),
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColor.iconBackcolor,
            ),
            padding: const EdgeInsets.all(6),
            child: const Icon(Icons.facebook, color: Colors.blue, size: 30)),
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black54,
            ),
            padding: const EdgeInsets.all(6),
            child: const Icon(Icons.apple, color: Colors.white, size: 30))
      ]),
    );
  }
}
