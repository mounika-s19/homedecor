import 'package:get/get.dart';

class OrderController extends GetxController {
 Rx<int> selectedIndex = 0.obs;

  setSelectedIndex(int index){
    selectedIndex.value = index;
  }
}
