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
    String? Lang = services.cache.getString("lang");
    if (Lang == "ar") {
      currentLang = const Locale("ar");
    } else if (Lang == "en") {
      currentLang = const Locale("en");
    } else {
      currentLang =Locale(Get.deviceLocale!.languageCode) ;
    }
    super.onInit();
  }
}
