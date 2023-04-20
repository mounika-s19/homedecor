import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:home_decor_sample/common/custom_cartbutton.dart';
import 'package:home_decor_sample/common/custom_elevatedbutton.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/controller/cart_controller.dart';
import 'package:home_decor_sample/controller/favorite_controller.dart';
import 'package:home_decor_sample/model/cart.dart';
import 'package:home_decor_sample/routes/app_pages.dart';

import '../model/types.dart';

class DetailScreenView extends StatelessWidget {
  final Types types;

  const DetailScreenView({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    final favController = Get.put(FavoriteController());
    final cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: CustomCartButton(),
          ),
        ],
      ),
      body: Padding(
        padding: AppConstants.kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Hero(
                  tag: types.id.toString(),
                  child: Image.asset(
                    types.image.toString(),
                    width: 500,
                    height: 200,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  types.name.toString(),
                  style: AppConstants.kBodyLarge,
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  child: Obx(() => FavoriteButton(
                        iconSize: 40.0,
                        isFavorite: favController.favoriteList.any((fav) => fav.id == types.id),
                        iconDisabledColor: Colors.grey,
                        valueChanged: (isFavorite) {
                          favController.addToFav(types);
                        },
                      )),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using''',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              '\u{20B9} ${types.price.toString()}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        cartController.addToCart(Cart(types: types));
                      },
                      icon: const HeroIcon(HeroIcons.shoppingCart),
                      label: const Text(
                        'Add to Cart',
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.buy);
                      },
                      text: 'Buy Now',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
