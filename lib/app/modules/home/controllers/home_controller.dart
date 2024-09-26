import 'package:get/get.dart';

import '../views/movie_view.dart';
import '../views/search_view.dart';
import '../views/show_view.dart';
import '../views/watch_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  var currentIndex = 0.obs;

  // var subviews = [MovieView()];
  var subviews = [MovieView(), ShowView(), SearchView(), WatchView()];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
