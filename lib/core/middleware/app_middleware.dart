import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/core/services/setting_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  AppServices settings = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    print("======");
    if (settings.cache.getString("onboarding") == "1") {
      print("------");
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
