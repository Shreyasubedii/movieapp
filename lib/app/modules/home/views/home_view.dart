import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      // appBar: AppBar(
      //   title: const Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: Obx(() => Center(
        child: controller.subviews[controller.currentIndex.value],
      )),
      
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Get.theme.colorScheme.primary,
          unselectedItemColor: Get.theme.colorScheme.secondary,
          showUnselectedLabels: true,
          backgroundColor: Get.theme.colorScheme.outlineVariant,
          currentIndex: controller.currentIndex.value,
          onTap: (value) {
            controller.currentIndex.value = value;
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Get.theme.colorScheme.secondary),
              label: "home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "bookmark"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "person"),
          ],
        ),
      ),
    );
  }
}
