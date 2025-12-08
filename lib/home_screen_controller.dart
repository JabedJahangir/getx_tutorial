import 'package:get/get.dart';

class HomeScreenController {
  Rx<bool> showPassword = false.obs;

  void updateShowPass() {
    showPassword.value = !showPassword.value;
  }
}
