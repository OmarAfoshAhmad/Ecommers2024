import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone";
    }
  }

  if (val.isEmpty) {
    return "Can't Be Value Empty";
  }

  if (val.length < min) {
    return "Can't Be less Than $min";
  }

  if (val.length > max) {
    return "Can't Be larger Than $max";
  }
}
