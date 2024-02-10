import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  loginWithEmail();
  loginWithGoogle();
  loginWithFacebook();
  loginWithGithub();
  loginWithApple();
  goToSignUp();
  goToForgetPassword();
}

class LoginControlerImp extends LoginController {
  GlobalKey<FormState> formValid = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  loginWithApple() {}

  @override
  loginWithEmail() {
    var formdata = formValid.currentState;
    if (formdata!.validate()) {
      print("valid");
    }else{
      print("not valid");
    }
  }

  @override
  loginWithFacebook() {}

  @override
  loginWithGithub() {}

  @override
  loginWithGoogle() {}

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offAllNamed(AppRoute.forgetpassword);
  }
}
