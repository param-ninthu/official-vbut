import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:official_vbuyy/resources/colors.dart';
import 'package:official_vbuyy/screens/common/login.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: HexColor('#00FFAB'),
        hintColor: HexColor('#E5E5E5'),
        errorColor: HexColor('#E74646'),
        fontFamily: GoogleFonts.play().fontFamily,
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          headline1: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(20, 195, 142, 1),
          ),
          headline3: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          headline4: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          headline6: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(183, 198, 217, 1)),
          bodyText2: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          caption: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Vbuyy',
      home: const Login(),
    );
  }
}
