import 'package:ecommers2024/core/localization/locale_controller.dart';
import 'package:ecommers2024/core/localization/translation.dart';
import 'package:ecommers2024/core/services/setting_app.dart';
import 'package:ecommers2024/my_binding.dart';
import 'package:ecommers2024/routes.dart';
import 'package:ecommers2024/view/screen/language_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServeices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      title: 'Ecommers',
      debugShowCheckedModeBanner: false,
      translations: LanguageApp(),
      theme: ThemeData(fontFamily: "Playfair", primarySwatch: Colors.blue),
      home: const LanguagePage(),
      locale: controller.currentLang,
      getPages: routes,
      initialBinding: MyBinding(),
    );
  }
}
