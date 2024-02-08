import 'package:get/get.dart';

class LanguageApp implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {'chooselang': "Choose Language"},
        'ar': {'chooselang': "اختر اللغة المطلوبة"}
      };
}
