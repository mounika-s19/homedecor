import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:home_decor_sample/controller/cart_controller.dart';
import 'package:home_decor_sample/controller/favorite_controller.dart';
import 'package:home_decor_sample/model/cart.dart';
import 'package:home_decor_sample/view/detail_screen_view.dart';

import '../model/types.dart';

class CardType extends StatelessWidget {
  final Types types;

  const CardType({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    final favController = Get.put(FavoriteController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.to(() => DetailScreenView(types: types));
            },
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            cartController.addToCart(Cart(types: types));
                          },
                          child: const HeroIcon(
                            HeroIcons.shoppingCart,
                            size: 23,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Obx(() => Center(
                                child: IconButton(
                                  onPressed: () => favController.addToFav(types),
                                  icon: Icon(
                                    Icons.favorite,
                                    color: favController.favoriteList
                                                .firstWhereOrNull((element) => element.id == types.id) ==
                                            null
                                        ? Colors.grey
                                        : Colors.red,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Hero(
                      tag: types.id.toString(),
                      child: Image.asset(
                        types.image.toString(),
                        height: 130,
                        width: 130,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              types.name.toString(),
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              '\u{20B9} ${types.price.toString()}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            StarButton(
              iconSize: 20.0,
              isStarred: false,
              valueChanged: (isStarred) {
                print('Is Starred : $isStarred');
              },
            ),
            const SizedBox(width: 5),
            Text(
              types.rating.toString(),
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ],
        )
      ],
    );
  }
}
