import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// BottomNavigationBar bottomNav() {
//   return BottomNavigationBar(
//     items: <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//           backgroundColor: HexColor('#0125FC')),
//       BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           label: 'Search',
//           backgroundColor: HexColor('#0125FC')),
//       BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_cart),
//           label: 'Cart',
//           backgroundColor: HexColor('#0125FC')),
//       BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//           backgroundColor: HexColor('#0125FC')),
//     ],
//     selectedItemColor: HexColor('#0125FC'),
//     unselectedItemColor: HexColor('#B7C6D9'),
//     showUnselectedLabels: true,
//     unselectedLabelStyle: TextStyle(
//       color: HexColor('#B7C6D9'),
//     ),
//     selectedLabelStyle: TextStyle(
//       color: HexColor('#0125FC'),
//     ),
//     type: BottomNavigationBarType.fixed,
//   );
// }

GNav bottomNav() {
  return GNav(
    rippleColor: Colors.grey,
    hoverColor: Colors.grey.shade600,
    haptic: true,
    tabBorderRadius: 15,
    tabActiveBorder: Border.all(color: Colors.black, width: 1),
    tabBorder: Border.all(color: Colors.grey, width: 1),
    tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
    curve: Curves.easeOutExpo,
    duration: Duration(milliseconds: 700),
    gap: 8,
    color: Colors.grey[800],
    activeColor: Color.fromARGB(255, 39, 80, 176),
    iconSize: 24,
    tabBackgroundColor: Color.fromARGB(255, 46, 39, 176).withOpacity(0.1),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    tabs: [
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
      print(index);
    },
  );
}
