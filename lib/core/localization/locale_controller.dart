import 'package:ecommers2024/core/services/setting_app.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? currentLang;
  AppServices services = Get.find();
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    services.cache.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lang = services.cache.getString("lang");
    if (lang == "ar") {
      currentLang = const Locale("ar");
    } else if (lang == "en") {
      currentLang = const Locale("en");
    } else {
      currentLang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
