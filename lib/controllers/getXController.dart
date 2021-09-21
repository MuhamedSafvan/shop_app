import 'package:get/get.dart';

class MyController extends GetxController {
  var qty = 0.obs;

  incrementctr() {
    qty.value++;
  }

  void decrementctr() {
    if (qty.value != 0) {
      qty.value--;
    }
  }

  
}
