import 'package:flutter/material.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/model/types.dart';

import '../constants/assets.dart';
import 'card_type.dart';

class ChairList extends StatelessWidget {
  const ChairList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: Padding(
        padding: AppConstants.kDefaultPadding,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const <Widget>[
                  ChairTypes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChairTypes extends StatelessWidget {
  const ChairTypes({super.key});

  @override
  Widget build(BuildContext context) {
    List<Types> typesList = [
      Types(
        id: '41',
        image: Assets.chair1,
        name: 'Red Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '42',
        image: Assets.chair2,
        name: 'Green Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '43',
        image: Assets.chair3,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '44',
        image: Assets.chair4,
        name: 'Large Vintage Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '45',
        image: Assets.chair5,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '46',
        image: Assets.chair6,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '47',
        image: Assets.chair7,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '48',
        image: Assets.chair8,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '49',
        image: Assets.chair9,
        name: 'Large Vintage Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '410',
        image: Assets.chair10,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '411',
        image: Assets.chair11,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '412',
        image: Assets.chair12,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
    ];
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: typesList.length,
        itemBuilder: (context, index) {
          final couchL = typesList[index];
          // return CardType(cart: couchL);
          return CardType(types: couchL);
        });
  }
}
