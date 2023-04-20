import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_decor_sample/common/custom_elevatedbutton.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/controller/order_controller.dart';
import 'package:home_decor_sample/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../constants/assets.dart';

class OrderSuccessView extends GetView<OrderController> {
  const OrderSuccessView({super.key});

  @override
  OrderController get controller => Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.orderSuccess,
              repeat: false,
            ),
            const Text(
              'Order Placed Successfully',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.pages);
          },
          text: 'Continue shopping',
        ),
      ),
    );
  }
}
