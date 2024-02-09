import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLinkAuth extends StatelessWidget {
  final String text;
  final String link;
  final void Function()? onTap;
  const CustomLinkAuth({super.key, required this.text, required this.link, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        InkWell(
          onTap: () {
            if (link == 'Sign Up') {
              Get.offAllNamed(AppRoute.signup);
            } else {
              Get.offAllNamed(AppRoute.login);
            }
          },
          child: Text(
            link,
            style: const TextStyle(color: AppColor.primaryColor),
          ),
        )
      ],
    );
  }
}
