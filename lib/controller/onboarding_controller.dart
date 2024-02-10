import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/core/services/setting_app.dart';
import 'package:ecommers2024/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int x);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  AppServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.cache.setString("onboarding", "1");
      print(myServices.cache.getString("onboarding"));
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int x) {
    currentPage = x;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
