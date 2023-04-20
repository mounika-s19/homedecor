import 'package:flutter/material.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/model/types.dart';

import '../constants/assets.dart';
import 'card_type.dart';

class TableList extends StatelessWidget {
  const TableList({super.key});

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
                  TableTypes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TableTypes extends StatelessWidget {
  const TableTypes({super.key});

  @override
  Widget build(BuildContext context) {
    List<Types> typesList = [
      Types(
        id: '31',
        image: Assets.t1,
        name: 'Round Coffee Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '32',
        image: Assets.t2,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '33',
        image: Assets.t3,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '34',
        image: Assets.t4,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '35',
        image: Assets.t5,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '36',
        image: Assets.t6,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '37',
        image: Assets.t7,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '38',
        image: Assets.t8,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '39',
        image: Assets.t9,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '310',
        image: Assets.t10,
        name: 'Table',
        price: 200,
        rating: '4.5',
      ),
      Types(
        id: '311',
        image: Assets.t11,
        name: 'Table',
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
