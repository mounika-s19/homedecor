import 'package:home_decor_sample/model/types.dart';

class Cart {
  // String id;
  // String image;
  // String name;
  // double price;
  Types types;
  int quantity;

  Cart({
    // required this.id,
    // required this.image,
    // required this.name,
    // required this.price,
    required this.types,
    this.quantity = 1,
  });
}
