import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/common/login.dart';

// BuildContext context;

void registerClient(String email, String password, BuildContext context) {
  FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password)
      .then((value) => {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              borderSide: BorderSide(color: Colors.green, width: 2),
              buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
              headerAnimationLoop: false,
              animType: AnimType.BOTTOMSLIDE,
              title: 'Registered Successfully',
              desc: 'Ready to dive into the world of VBuyy?',
              btnOkOnPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            )..show()
          })
      .catchError((error) => print('Error: $error'));
}
