import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:home_decor_sample/controller/favorite_controller.dart';

import '../constants/assets.dart';
import '../model/types.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});

  @override
  FavoriteController get controller => Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Obx(
        () => controller.favoriteList.isNotEmpty
            ? ListView.builder(
                itemCount: controller.favoriteList.length,
                itemBuilder: (context, index) {
                  final fav = controller.favoriteList[index];
                  return FavCard(types: fav);
                },
              )
            : Center(
                child: Image.asset(
                Assets.noData,
                height: 300,
                width: 300,
              )),
      ),
    );
  }
}

class FavCard extends StatelessWidget {
  final Types types;
  const FavCard({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteController());
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      types.image.toString(),
                      height: 60,
                      width: 100,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      types.name.toString(),
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\u{20B9} ${types.price.toString()}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    controller.removeFromFav(types);
                  },
                  child: const HeroIcon(
                    HeroIcons.trash,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Divider(
            color: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }
}
