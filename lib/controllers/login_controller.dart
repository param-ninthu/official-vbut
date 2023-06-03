import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:official_vbuyy/layouts/field_layout.dart';

import '../screens/client/home.dart';
import '../screens/common/login.dart';

// BuildContext context;

void loginClient(String email, String password, BuildContext context) {
  FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password)
      .then((value) => {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              borderSide: BorderSide(color: Colors.green, width: 2),
              buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
              headerAnimationLoop: false,
              animType: AnimType.BOTTOMSLIDE,
              title: 'Login Successful',
              desc: 'Welcome to VBuyy!',
              btnOkOnPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Layout()),
                );
              },
            )..show()
          })
      .catchError((error) => {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              borderSide:
                  BorderSide(color: Theme.of(context).errorColor, width: 2),
              buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
              headerAnimationLoop: false,
              animType: AnimType.BOTTOMSLIDE,
              title: 'Login Failed',
              desc: 'Please check your credentials and try again.',
              btnOkColor: Theme.of(context).errorColor,
              btnOkOnPress: () {},
            )..show()
          });
}
