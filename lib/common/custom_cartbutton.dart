import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

import '../controller/cart_controller.dart';
import '../routes/app_pages.dart';

class CustomCartButton extends GetView<CartController> {
  const CustomCartButton({super.key});

  @override
  CartController get controller => Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.toNamed(Routes.cart);
      },
      icon: Obx(
        () => badges.Badge(
          showBadge: controller.items.isNotEmpty,
          badgeAnimation: const badges.BadgeAnimation.slide(
            toAnimate: true,
            animationDuration: Duration(milliseconds: 500),
          ),
          position: badges.BadgePosition.topEnd(top: -10),
          badgeContent: Text(
            controller.items.length.toString(),
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          child: const HeroIcon(HeroIcons.shoppingCart),
        ),
      ),
    );
  }
}
