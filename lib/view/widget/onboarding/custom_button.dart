import 'package:ecommers2024/controller/onboarding_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 30),
      color: AppColor.primaryColor,
      child: MaterialButton(
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        onPressed: () {
          controller.next();
        },
        child: const Text(
          "Continue",
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
