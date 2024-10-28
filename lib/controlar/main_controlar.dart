import 'package:get/get.dart';

class Maincontroller extends GetxController {
  final count = 0.obs;

  sanjid() {
    count.value = count.value + 2;
  }

  @override
  void onInit() {
    print('ctr');
    super.onInit();
  }
}
