import 'package:ecommers2024/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      textColor: AppColor.white,
      color: AppColor.primaryColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
