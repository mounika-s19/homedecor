import 'package:flutter/material.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/model/types.dart';

import '../constants/assets.dart';
import 'card_type.dart';

class SofaList extends StatelessWidget {
  const SofaList({super.key});

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
                  SofaTypes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SofaTypes extends StatelessWidget {
  const SofaTypes({super.key});

  @override
  Widget build(BuildContext context) {
    List<Types> typesList = [
      Types(
        id: '1',
        image: Assets.s1,
        name: 'Red Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '2',
        image: Assets.s2,
        name: 'Green Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '3',
        image: Assets.s3,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '4',
        image: Assets.s4,
        name: 'Large Vintage Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '5',
        image: Assets.s5,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '6',
        image: Assets.s6,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '7',
        image: Assets.s7,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '8',
        image: Assets.s8,
        name: 'Tufted fabric Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '9',
        image: Assets.s9,
        name: 'Large Vintage Sofa',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '10',
        image: Assets.s10,
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
          return CardType(types: couchL);
        });
  }
}
