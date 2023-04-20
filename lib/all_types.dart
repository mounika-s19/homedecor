import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:home_decor_sample/common/custom_cartbutton.dart';
import 'package:home_decor_sample/constants/assets.dart';
import 'package:home_decor_sample/lists/chair_list.dart';
import 'package:home_decor_sample/lists/couch_list.dart';
import 'package:home_decor_sample/lists/sofa_list.dart';
import 'package:home_decor_sample/lists/table_list.dart';

class AllTypes extends StatelessWidget {
  const AllTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomCartButton(),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: TabBar(
                tabs: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(Assets.lc),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(Assets.chair),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(Assets.table),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(Assets.couch1),
                  ),
                ],
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                dividerColor: Colors.transparent,
                indicator: ContainerTabIndicator(
                  radius: BorderRadius.circular(50),
                  height: 80,
                  width: 80,
                  borderWidth: 2.0,
                  borderColor: Colors.grey,
                  color: Colors.transparent,
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  SofaList(),
                  CouchList(),
                  TableList(),
                  ChairList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
