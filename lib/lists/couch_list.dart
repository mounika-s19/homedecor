import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/model/types.dart';

import '../constants/assets.dart';
import 'card_type.dart';

class CouchList extends StatelessWidget {
  const CouchList({super.key});

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
                  CouchTypes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CouchTypes extends StatelessWidget {
  const CouchTypes({super.key});

  @override
  Widget build(BuildContext context) {
    List<Types> typesList = [
      Types(
         id: '21',
        image: Assets.lc1,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '22',
        image: Assets.lc2,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '23',
        image: Assets.lc3,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '24',
        image: Assets.lc4,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '25',
        image: Assets.lc5,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '26',
        image: Assets.lc6,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '27',
        image: Assets.lc7,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '28',
        image: Assets.lc8,
        name: 'Tufted fabric Couch',
        price:200,
        rating: '4.5',
      ),
      Types(
         id: '29',
        image: Assets.lc9,
        name: 'Tufted fabric Couch',
        price:200,
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

