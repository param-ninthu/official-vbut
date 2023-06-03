import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:official_vbuyy/feature/bottom_navigation_state.dart';
import 'package:official_vbuyy/layouts/bottom_nav.dart';
import 'package:official_vbuyy/screens/client/home.dart';
import 'package:official_vbuyy/screens/client/search.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    SearchScreen(),
  ];

  final bottomNavController = Get.put(BottomNav());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Expanded(child: GetX<BottomNav>(builder: (controller) {
        return _widgetOptions.elementAt(controller.currentIndex.value);
      })),
      bottomNavigationBar: bottomNav(context),
    ));
  }
}
