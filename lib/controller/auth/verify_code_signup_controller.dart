import 'package:ecommers2024/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessVerifyCodeSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String code;

  @override
  checkCode() {
    
  }

  @override
  goToSuccessVerifyCodeSignUp() {
    Get.offNamed(AppRoute.successverifysignup);
  }
}
