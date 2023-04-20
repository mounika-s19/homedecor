import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/cart.dart';

class CartController extends GetxController {
  final RxList<Cart> cartItems = <Cart>[].obs;

  List<Cart> get items => cartItems;

  // final RxDouble _total = 0.0.obs;
  // double get total => _total.value;

  final RxInt _cartCount = 0.obs;
  int get cartCount => _cartCount.value;

  double get total =>
      cartItems.fold(0, (sum, item) => sum + item.types.price * item.quantity);

  void addToCart(Cart cart) {
    var item = cartItems.firstWhereOrNull((element) => element.types.id == cart.types.id) == null
        ? cartItems.add(cart)
        : ScaffoldMessenger.of(Get.context!).showSnackBar(
            const SnackBar(
              content: Text('Item already in cart'),
            ),
          );
  }

  void removeFromCart(Cart cartItem) {
    cartItems.remove(cartItem);
  }

  increaseQuantity(Cart cartItem) {
    cartItem.quantity++;
    update();
  }

  decreaseQuantity(Cart cartItem) {
    if (cartItem.quantity > 1) {
      cartItem.quantity--;
    } else {
      removeFromCart(cartItem);
    }
    update();
  }
}
