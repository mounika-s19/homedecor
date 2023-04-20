import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/controller/cart_controller.dart';
import 'package:home_decor_sample/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../constants/assets.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  CartController get controller => Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Obx(
        () => Padding(
          padding: AppConstants.kDefaultPadding,
          child: Column(
            children: [
              Expanded(
                child: controller.cartItems.isNotEmpty
                    ? ListView.builder(
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          var item = controller.items[index];

                          return Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    item.types.image.toString(),
                                    height: 80,
                                    width: 100,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.types.name.toString(),
                                          style: AppConstants.kBodySmallBold,
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                child: Text(
                                              '\u{20B9} ${item.types.price.toString()}',
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    controller.decreaseQuantity(item);
                                                  },
                                                  child: const HeroIcon(
                                                    HeroIcons.minus,
                                                    size: 15,
                                                    style: HeroIconStyle.solid,
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                GetBuilder<CartController>(
                                                  builder: (_) {
                                                    return Text(
                                                      item.quantity.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    );
                                                  },
                                                ),
                                                const SizedBox(width: 5),
                                                GestureDetector(
                                                  onTap: () {
                                                    controller.increaseQuantity(item);
                                                  },
                                                  child: const HeroIcon(
                                                    HeroIcons.plus,
                                                    size: 15,
                                                    style: HeroIconStyle.solid,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : LottieBuilder.asset(Assets.emptyCart),
              ),
              const Divider(),
              Row(
                children: [
                  const Text(
                    'Total :',
                    style: AppConstants.kBodySmallBold,
                  ),
                  const Spacer(),
                  GetBuilder<CartController>(
                    init: CartController(),
                    initState: (_) {},
                    builder: (_) {
                      return Text(
                        ' \u{20B9} ${controller.total.toString()}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: AppConstants.kDefaultPadding,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange.shade300,
          ),
          onPressed: () {
            Get.toNamed(Routes.buy);
          },
          child: const Text(
            'Continue for payments',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
