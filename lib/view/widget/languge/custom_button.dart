import 'package:ecommers2024/core/constant/color.dart';
import 'package:flutter/material.dart';


class CustomButtonLang extends StatelessWidget {
  final String text;
  final double? margin;
  final void Function()? onPressed;

   const CustomButtonLang({super.key, required this.text, this.margin = 10,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin!),
      child: MaterialButton(
        minWidth: 120,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        onPressed:onPressed,
        child: Text(text),
      ),
    );
  }
}
