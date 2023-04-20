part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const root = _Paths.root;
  static const pages = _Paths.pages;
  static const home = _Paths.home;
  static const living = _Paths.living;
  static const kids = _Paths.kids;
  static const cart = _Paths.cart;
  static const fav = _Paths.fav;
  static const buy = _Paths.buy;
  static const address = _Paths.address;
  static const delivery = _Paths.delivery;
    static const payment = _Paths.payment;
  static const orderSuccess = _Paths.orderSuccess;
}

abstract class _Paths {
  _Paths._();

  static const root = '/';
  static const pages = '/pages';
  static const home = '/home';
  static const living = '/living';
  static const kids = '/kids';
  static const cart = '/cart';
  static const fav = '/fav';
  static const buy = '/buy';
  static const address = '/address';
  static const delivery = '/delivery';
  static const payment = '/payment';
  static const orderSuccess = '/orderSuccess';
}
