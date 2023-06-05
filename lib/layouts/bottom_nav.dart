import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:official_vbuyy/resources/colors.dart';

import '../feature/bottom_navigation_state.dart';

final bottomNavIndexController = Get.put(BottomNav());

GNav bottomNav(BuildContext context) {
  return GNav(
    gap: 8,
    tabs: const [
      GButton(
        icon: Icons.home,
        text: 'Home',
      ),
      GButton(
        icon: Icons.search,
        text: 'Search',
      ),
      GButton(
        icon: Icons.shopping_cart,
        text: 'Cart',
      ),
      GButton(
        icon: Icons.person,
        text: 'Profile',
      ),
    ],
    selectedIndex: 0,
    onTabChange: (index) {
      bottomNavIndexController.changeIndex(index);
    },
  );
}
