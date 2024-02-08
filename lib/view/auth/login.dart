import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/view/widget/auth/custom.header.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_social_media.dart';
import 'package:ecommers2024/view/widget/auth/custom_text.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
              const CustomHeader(
                  text: "Welcome Back",
                  body:
                      "Sign In With Email And Password Or\n Continue by Social Media",
                  img: AppImageAsset.logo),
              const SizedBox(height: 20),
              const CustomTextFormAuth(
                hint: "Enter Your Email",
                label: "Email",
                icon: Icon(Icons.mail_outlined),
              ),
              const CustomTextFormAuth(
                hint: "Enter Your Password",
                label: "Password",
                isPassword: true,
                icon: Icon(Icons.lock_outlined),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Foreget Password ?",
                  style: TextStyle(fontSize: AppFont.primaryFontLink),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(text: "Sign In", onPressed: () {}),
              const SizedBox(height: 20),

        const CustomSocialMedia(),
            ],
          ),
        ));
  }
}
