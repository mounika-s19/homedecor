import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_decor_sample/common/custom_elevatedbutton.dart';
import 'package:home_decor_sample/controller/order_controller.dart';

class AddressView extends GetView<OrderController> {
  const AddressView({super.key});

  @override
  OrderController get controller => Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
                onPressed: () {
                  controller.selectedIndex.value = 1;
                },
                text: 'Add Address')
          ],
        ),
      ),
    );
  }
}
