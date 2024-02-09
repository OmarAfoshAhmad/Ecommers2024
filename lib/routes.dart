import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/view/auth/login.dart';
import 'package:ecommers2024/view/auth/profile.dart';
import 'package:ecommers2024/view/auth/forget_password.dart';
import 'package:ecommers2024/view/auth/reset_password.dart';
import 'package:ecommers2024/view/auth/signup.dart';
import 'package:ecommers2024/view/auth/success_verify.dart';
import 'package:ecommers2024/view/auth/verifycode.dart';
import 'package:ecommers2024/view/screen/language_page.dart';
import 'package:ecommers2024/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Start Auth Routes ---------------
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => const SignUp(),
  AppRoute.profile: (context) => const Profile(),
  //  ----------------------------------------------
  AppRoute.verifycode: (context) => const VerifyCode(),
  AppRoute.forgetpassword: (context) => const ForgetPassword(),
  AppRoute.resetpassword: (context) => const ResetPassword(),
  AppRoute.successverify: (context) => const SuccessVerify(),
  // End Auth Routes ---------------

// Start Settings Routes ---------------
  AppRoute.lang: (context) => const LanguagePage(),

// End Settings Routes ---------------
  AppRoute.onboarding: (context) => const OnBoarding(),
};
