import 'package:ecommers2024/controller/auth/signup_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/font.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_link.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
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
              const CustomTitle(text: "Welcome Back"),
              const SizedBox(height: 30),
              const CustomBodyAuth(
                  body:
                      "Sign Up With Email And Password Or\n Continue by Social Media"),
              CustomTextFormAuth(
                hint: "Enter Your Username",
                label: "Username",
                icon: const Icon(Icons.person),
                mycontroller: controller.username,
              ),
              CustomTextFormAuth(
                hint: "Enter Your Email",
                label: "Email",
                icon: const Icon(Icons.mail_outlined),
                mycontroller: controller.email,
              ),
              CustomTextFormAuth(
                hint: "Enter Your Phone",
                label: "Phone",
                icon: const Icon(Icons.phone),
                mycontroller: controller.phone,
              ),
              CustomTextFormAuth(
                hint: "Enter Your Password",
                label: "Password",
                isPassword: true,
                icon: const Icon(Icons.lock_outlined),
                mycontroller: controller.password,
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(text: "Sign In", onPressed: () {}),
              const SizedBox(height: 20),
              const CustomLinkAuth(text: "Do Have Account ? ", link: "Sign In"),
            ],
          ),
        ));
  }
}
