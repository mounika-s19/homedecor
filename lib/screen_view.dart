import 'package:flutter/material.dart';
import 'package:home_decor_sample/all_types.dart';
import 'package:home_decor_sample/view/favorite_view.dart';
import 'package:home_decor_sample/view/home_view.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import 'view/profile_view.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          HomeView(),
          AllTypes(),
          FavoriteView(),
          ProfileView(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        enableIconRotation: true,
        activeItemColor: Colors.orange.shade400,
        items: const [
          RollingBottomBarItem(Icons.home),
          RollingBottomBarItem(Icons.search),
          RollingBottomBarItem(Icons.favorite),
          RollingBottomBarItem(Icons.person),
        ],
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(microseconds: 800),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}
