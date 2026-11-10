import 'package:get/state_manager.dart';

class HomepageController extends GetxController {
  var number = 0.obs;

  incriment() {
    number++;
  }

  dicriment() {
    if (number > 0) {
      number--;
    }
  }

  resart() {
    number.value = 0;
  }
}
