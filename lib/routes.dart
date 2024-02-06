import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:ecommers2024/view/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
