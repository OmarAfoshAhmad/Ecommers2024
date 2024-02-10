import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessVerifyCodeSignUp extends StatelessWidget {
  const SuccessVerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success Verify Code Account"),
        centerTitle: true,
        foregroundColor: AppColor.grey,
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppColor.primaryColor,
                ),
                CustomTitle(text: "Congratulations"),
                CustomBodyAuth(body: "Success Register")
              ],
            ),
            CustomButtonAuth(
                text: "Go To Login",
                onPressed: () {
                  Get.offNamed(AppRoute.login);
                }),
          ],
        ),
      ),
    );
  }
}
