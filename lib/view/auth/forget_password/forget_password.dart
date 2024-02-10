import 'package:ecommers2024/controller/auth/forget_password/forget_password_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_logo.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forget Password"),
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
              const CustomTitle(text: "Check Your Email"),
              const SizedBox(height: 30),
              const CustomBodyAuth(
                  body:
                      "Plaese Enter Your Email Address To\n Recive Verfication Code"),
              CustomTextFormAuth(
                hint: "Enter Your Email",
                label: "Email",
                icon: Icons.mail_outlined,
                mycontroller: controller.email,
                keyboardType: TextInputType.emailAddress,
                valid: (val) {},
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(
                  text: "Check",
                  onPressed: () {
                    controller.goToVerfiyCode();
                  }),
            ],
          ),
        ));
  }
}
