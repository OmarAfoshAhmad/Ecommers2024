import 'package:ecommers2024/controller/auth/login_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_link.dart';
import 'package:ecommers2024/view/widget/auth/custom_logo.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_social_media.dart';
import 'package:ecommers2024/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControlerImp controller = Get.put(LoginControlerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign In"),
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
              const CustomTitle(text: "Welcome Back"),
              const SizedBox(height: 30),
              const CustomBodyAuth(
                  body:
                      "Sign In With Email And Password Or\n Continue by Social Media"),
              CustomTextFormAuth(
                hint: "Enter Your Email",
                label: "Email",
                icon: const Icon(Icons.mail_outlined),
                mycontroller: controller.email,
              ),
              CustomTextFormAuth(
                hint: "Enter Your Password",
                label: "Password",
                isPassword: true,
                icon: const Icon(Icons.lock_outlined),
                mycontroller: controller.password,
              ),
              SizedBox(
                width: double.infinity,
                child: InkWell(
                  child: const Text(
                    "Foreget Password ?",
                    style: TextStyle(fontSize: AppFont.primaryFontLink),
                    textAlign: TextAlign.right,
                  ),
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                ),
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(text: "Sign In", onPressed: () {}),
              const SizedBox(height: 20),
              const CustomLinkAuth(
                text: "Don't Have Account ? ",
                link: 'Sign Up',
              ),
              const SizedBox(height: 10),
              const CustomSocialMedia(),
            ],
          ),
        ));
  }
}
