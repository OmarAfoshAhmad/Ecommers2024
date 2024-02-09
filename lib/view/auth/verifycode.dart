import 'package:ecommers2024/controller/auth/verify_code_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_logo.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Verification Code"),
          centerTitle: true,
          foregroundColor: AppColor.grey,
          backgroundColor: AppColor.white,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CustomLogoAuth(img: AppImageAsset.logo),
              const SizedBox(height: 30),
              const CustomTitle(text: "Check Your Code"),
              const SizedBox(height: 30),
              const CustomBodyAuth(
                  body: "Please Enter The Digit Code Sent To Omar@gmail.com"),
              const SizedBox(height: 50),
              OtpTextField(
                fieldWidth: 60,
                textStyle: const TextStyle(fontSize: AppFont.primaryFontHeader),
                borderRadius: BorderRadius.circular(15),
                keyboardType: TextInputType.number,
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
            ],
          ),
        ));
  }
}
