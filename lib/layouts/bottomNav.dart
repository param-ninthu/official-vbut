import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../screens/client/home.dart';

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

GNav bottomNav(BuildContext context) {
  return GNav(
    gap: 8,
    tabs: [
      GButton(
        icon: Icons.home,
        text: 'Home',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
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
