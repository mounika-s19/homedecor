import 'package:get/get.dart';
import 'package:home_decor_sample/all_types.dart';
import 'package:home_decor_sample/lists/couch_list.dart';
import 'package:home_decor_sample/view/buynow_view.dart';
import 'package:home_decor_sample/view/cart_view.dart';
import 'package:home_decor_sample/view/delivery_view.dart';
import 'package:home_decor_sample/view/favorite_view.dart';
import 'package:home_decor_sample/view/order_success_view.dart';

import '../screen_view.dart';
import '../view/home_view.dart';
import '../view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.root;

  static final routes = [
    GetPage(
      name: _Paths.root,
      page: () => const SplashView(),
    ),
    GetPage(
      name: _Paths.pages,
      page: () => const ScreenView(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.living,
      page: () => const CouchList(),
    ),
    GetPage(
      name: _Paths.kids,
      page: () => const AllTypes(),
    ),
    GetPage(
      name: _Paths.cart,
      page: () => const CartView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.fav,
      page: () => const FavoriteView(),
    ),
    GetPage(
      name: _Paths.buy,
      page: () => const BuyNowView(),
    ),
    GetPage(
      name: _Paths.delivery,
      page: () => const DeliveryView(),
    ),
    GetPage(
      name: _Paths.orderSuccess,
      page: () => const OrderSuccessView(),
    ),
  ];
}
