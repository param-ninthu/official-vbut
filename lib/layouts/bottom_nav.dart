import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:official_vbuyy/screens/client/search.dart';

import '../screens/client/home.dart';

GNav bottomNav(BuildContext context) {
  return GNav(
    gap: 8,
    tabs: [
      GButton(
        icon: Icons.home,
        text: 'Home',
        // onPressed: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => Home()));
        // },
      ),
      GButton(
        icon: Icons.search,
        text: 'Search',
        // onPressed: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => SearchScreen()));
        // },
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
      print(index);
    },
  );
}
