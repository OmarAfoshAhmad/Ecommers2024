import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String code;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetpassword);
  }


}
