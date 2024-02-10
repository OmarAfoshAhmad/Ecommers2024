import 'package:ecommers2024/controller/auth/signup_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/function/alert_exit_app.dart';
import 'package:ecommers2024/core/function/validInput.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
          foregroundColor: AppColor.grey,
          backgroundColor: AppColor.white,
          elevation: 0,
        ),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => WillPopScope(
                onWillPop: alertExitApp,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: controller.formValid,
                    child: ListView(
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
                          icon: Icons.person,
                          mycontroller: controller.username,
                          keyboardType: TextInputType.text,
                          valid: (val) {
                            return validInput(val!, 5, 30, "username");
                          },
                        ),
                        CustomTextFormAuth(
                          hint: "Enter Your Email",
                          label: "Email",
                          icon: Icons.mail_outlined,
                          mycontroller: controller.email,
                          keyboardType: TextInputType.emailAddress,
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                        ),
                        CustomTextFormAuth(
                          hint: "Enter Your Phone",
                          label: "Phone",
                          icon: Icons.phone,
                          mycontroller: controller.phone,
                          keyboardType: TextInputType.phone,
                          valid: (val) {
                            return validInput(val!, 11, 15, "phone");
                          },
                        ),
                        CustomTextFormAuth(
                          hint: "Enter Your Password",
                          label: "Password",
                          isPassword: true,
                          icon: Icons.lock_outlined,
                          mycontroller: controller.password,
                          keyboardType: TextInputType.visiblePassword,
                          valid: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomButtonAuth(
                            text: "Sign Up",
                            onPressed: () {
                              controller.signup();
                            }),
                        const SizedBox(height: 20),
                        const CustomLinkAuth(
                            text: "Do Have Account ? ", link: "Sign In"),
                      ],
                    ),
                  ),
                ))));
  }
}
