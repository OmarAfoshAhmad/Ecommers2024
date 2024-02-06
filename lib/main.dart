import 'package:ecommers2024/routes.dart';
import 'package:ecommers2024/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Playfair",
        primarySwatch:  Colors.blue),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
