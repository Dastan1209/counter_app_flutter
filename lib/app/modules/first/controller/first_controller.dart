import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;
  RxInt buildCount = 0.obs;
  void kemit() {
    san.value = san.value - 1;
  }

  void koshuu() {
    san.value = san.value + 1;
  }

  // void otkoz() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => SecondView(san: san),
  //     ),
  //   );
  // }
}
