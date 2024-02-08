import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/core/localization/locale_controller.dart';
import 'package:ecommers2024/view/widget/languge/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.find();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "chooselang".tr,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              text: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.offAllNamed(AppRoute.onboarding);
              },
            ),
            CustomButtonLang(
              text: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offAllNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
