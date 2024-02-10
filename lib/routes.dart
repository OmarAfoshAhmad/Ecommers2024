import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/core/middleware/app_middleware.dart';
import 'package:ecommers2024/view/auth/forget_password/forget_password.dart';
import 'package:ecommers2024/view/auth/forget_password/reset_password.dart';
import 'package:ecommers2024/view/auth/forget_password/success_verify.dart';
import 'package:ecommers2024/view/auth/login.dart';
import 'package:ecommers2024/view/auth/profile.dart';
import 'package:ecommers2024/view/auth/signup.dart';
import 'package:ecommers2024/view/auth/forget_password/verifycode.dart';
import 'package:ecommers2024/view/auth/success_verifycode_signup.dart';
import 'package:ecommers2024/view/auth/verify_code_signup.dart';
import 'package:ecommers2024/view/screen/language_page.dart';
import 'package:ecommers2024/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const LanguagePage(),middlewares: [
    AppMiddleware(),
  ]),
  GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
  // Start Auth Routes ---------------
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.profile, page: () => const Profile()),

  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifycode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetpassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successresetpassword,page: () => const SuccessResetPassword()),

  GetPage(name: AppRoute.verifycodesignup, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoute.successverifysignup,page: () => const SuccessVerifyCodeSignUp()),
];
