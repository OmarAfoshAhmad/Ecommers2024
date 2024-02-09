import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  signup() {
        Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
