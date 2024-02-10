import 'package:ecommers2024/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirm;
  @override
  void onInit() {
    password = TextEditingController();
    confirm = TextEditingController();
    super.onInit();
  }

  @override
  checkEmail() {}

  @override
  void dispose() {
    password.dispose();
    confirm.dispose();
    super.dispose();
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successresetpassword);
  }
}
