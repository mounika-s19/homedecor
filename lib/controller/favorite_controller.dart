import 'package:get/get.dart';

import '../model/types.dart';

class FavoriteController extends GetxController {
  final RxList<Types> _favoriteList = <Types>[].obs;

  List<Types> get favoriteList => _favoriteList;

  void addToFav(Types types) {
    _favoriteList.firstWhereOrNull((element) => element.id == types.id) == null
        ? favoriteList.add(types)
        : favoriteList.remove(types);
  }

  void removeFromFav(Types types) {
    favoriteList.remove(types);
    update();
  }
}
