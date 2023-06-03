import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:official_vbuyy/layouts/bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: HexColor("#F2F2F2"),
          width: MediaQuery.of(context).size.width,
          child: Center(child: Text("Home")),
        ),
      ),
    );
  }
}
