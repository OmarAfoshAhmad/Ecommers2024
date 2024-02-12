import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/core/services/setting_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMiddleware extends GetMiddleware {
  @override
  int? get priority => 0;
  AppServices settings = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    print(settings.cache.getString("onboarding").runtimeType);
    if (settings.cache.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
