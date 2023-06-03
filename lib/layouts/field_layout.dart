import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:official_vbuyy/feature/bottom_navigation_state.dart';
import 'package:official_vbuyy/layouts/bottom_nav.dart';
import 'package:official_vbuyy/screens/client/home.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final bottomNavController = Get.put(BottomNav());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const Home(),
      bottomNavigationBar: bottomNav(context),
    ));
  }
}
