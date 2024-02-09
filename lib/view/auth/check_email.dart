import 'package:ecommers2024/controller/auth/forget_password_controller.dart';
import 'package:ecommers2024/controller/auth/login_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_link.dart';
import 'package:ecommers2024/view/widget/auth/custom_logo.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_social_media.dart';
import 'package:ecommers2024/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
  
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
          child: const Column(
            children: [
              SizedBox(height: 30),
              CustomLogoAuth(img: AppImageAsset.logo),
              SizedBox(height: 30),
              CustomTitle(text: "Check Your Email"),
              SizedBox(height: 30),
              CustomBodyAuth(
                  body:
                      "Plaese Enter Your Email Address To\n Recive Verfication Code"),
              // CustomTextFormAuth(
              //   hint: "Enter Your Email",
              //   label: "Email",
              //   icon: const Icon(Icons.mail_outlined),
              //   mycontroller: controller.email,
              // ),
            ],
          ),
        ));
  }
}
