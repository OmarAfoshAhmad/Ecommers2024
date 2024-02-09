import 'package:ecommers2024/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  checkEmail() {}

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successverify);
  }
}
