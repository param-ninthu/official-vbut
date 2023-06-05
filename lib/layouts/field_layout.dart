import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:official_vbuyy/feature/bottom_navigation_state.dart';
import 'package:official_vbuyy/layouts/bottom_nav.dart';
import 'package:official_vbuyy/screens/client/home.dart';
import 'package:official_vbuyy/screens/client/profile.dart';
import 'package:official_vbuyy/screens/client/search.dart';
import 'package:official_vbuyy/screens/client/shopping_cart.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final bottomNavIndexController = Get.put(BottomNav());

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    SearchScreen(),
    ShoppingCart(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Obx(() => _widgetOptions
          .elementAt(bottomNavIndexController.currentIndex.value)),
      bottomNavigationBar: bottomNav(context),
    ));
  }
}
