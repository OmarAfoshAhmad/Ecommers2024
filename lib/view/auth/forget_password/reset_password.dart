import 'package:ecommers2024/controller/auth/forget_password/reset_password_controller.dart';
import 'package:ecommers2024/core/constant/color.dart';
import 'package:ecommers2024/core/constant/image_asset.dart';
import 'package:ecommers2024/view/widget/auth/custom_body.dart';
import 'package:ecommers2024/view/widget/auth/custom_button.dart';
import 'package:ecommers2024/view/widget/auth/custom_logo.dart';
import 'package:ecommers2024/view/widget/auth/custom_text_field.dart';
import 'package:ecommers2024/view/widget/auth/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reset Password"),
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
              const CustomTitle(text: "New Password"),
              const SizedBox(height: 30),
              const CustomBodyAuth(
                  body: "Plaese Enter New Password To \n Access App"),
              CustomTextFormAuth(
                hint: "Enter New Password",
                label: "Password",
                icon: Icons.mail_outlined,
                mycontroller: controller.password,
                keyboardType: TextInputType.visiblePassword,
                valid: (val) {},
              ),
              CustomTextFormAuth(
                hint: "RE Enter New Password",
                label: "Password",
                icon: Icons.mail_outlined,
                mycontroller: controller.confirm,
                keyboardType: TextInputType.visiblePassword,
                valid: (val) {},
              ),
              const SizedBox(height: 20),
              CustomButtonAuth(
                  text: "Save",
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  }),
              const SizedBox(height: 20),
            ],
          ),
        ));
    ;
  }
}
