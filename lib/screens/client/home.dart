import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:official_vbuyy/layouts/bottomNav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#0125FC'),
          title: Text('NavBar'),
        ),
        body: Container(
          child: Center(
            child: Text('Home'),
          ),
        ),
        bottomNavigationBar: bottomNav(context),
      ),
    );
  }
}
