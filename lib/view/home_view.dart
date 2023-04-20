import 'package:flutter/material.dart';
import 'package:home_decor_sample/common/custom_cartbutton.dart';
import 'package:home_decor_sample/constants/app_constants.dart';

import '../constants/assets.dart';
import '../model/decor.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.kDefaultPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Hi, Komal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    CustomCartButton(),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Decor your home',
                      style: AppConstants.kBodyLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(
                          0XFFfff4e7,
                        ),
                        Color(0XFFfff4e8),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: AppConstants.kDefaultPadding,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Discount for spring',
                                  style: AppConstants.kBodyMedium,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'collection',
                                    style: AppConstants.kBodyMedium,
                                    children: [
                                      TextSpan(
                                        text: ' 10% off',
                                        style: TextStyle(
                                          color: Colors.orange.shade600,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(Assets.decor1),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              '08:42:34',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 65),
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(Assets.couch2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const CategoriesList(),
                const SizedBox(height: 15),
                const Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const ArrivalList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Decor> decorList = [
      Decor(image: Assets.couch3, title: 'Living Room'),
      Decor(image: Assets.couch4, title: 'Kids Room'),
      Decor(image: Assets.couch3, title: 'Living Room'),
      Decor(image: Assets.couch4, title: 'Kids Room'),
      Decor(image: Assets.couch3, title: 'Living Room'),
      Decor(image: Assets.couch4, title: 'Kids Room')
    ];
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: decorList.length,
        itemBuilder: (context, index) {
          final dl = decorList[index];
          return CardCategory(decor: dl);
        },
      ),
    );
  }
}

class ArrivalList extends StatelessWidget {
  const ArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Decor> decorList = [
      Decor(image: Assets.arrival1, title: 'Flower Stands'),
      Decor(image: Assets.arrival2, title: 'Flower vase'),
      Decor(image: Assets.arrival1, title: 'Flower Stands'),
      Decor(image: Assets.arrival2, title: 'Flower vase'),
      Decor(image: Assets.arrival1, title: 'Flower Stands'),
      Decor(image: Assets.arrival2, title: 'Flower vase')
    ];
    return SizedBox(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: decorList.length,
          itemBuilder: (context, index) {
            final dl = decorList[index];
            return CardCategory(decor: dl);
          }),
    );
  }
}

class CardCategory extends StatelessWidget {
  final Decor decor;
  const CardCategory({super.key, required this.decor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              decor.image,
              height: 155,
              width: 155,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            decor.title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
