import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppServices extends GetxService {
  late SharedPreferences cache;

  Future<AppServices> init() async {
    cache = await SharedPreferences.getInstance();
    return this;
  }
}

initialServeices() async{
  await Get.putAsync(() =>  AppServices().init());
}
