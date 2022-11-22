import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

BottomNavigationBar __bottomNav() {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: HexColor('#0125FC')),
    BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
        backgroundColor: HexColor('#0125FC')),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
        backgroundColor: HexColor('#0125FC')),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
        backgroundColor: HexColor('#0125FC')),
  ]);
}
