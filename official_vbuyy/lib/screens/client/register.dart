import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:official_vbuyy/screens/common/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var _email = TextEditingController();
    var _password = TextEditingController();
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/signup.png'),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: HexColor('#000')),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        color: HexColor('#F5F6F9'),
                        child: Icon(Icons.facebook_outlined),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        color: HexColor('#F5F6F9'),
                        child: Icon(Icons.mail_outline),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Or, register with email...',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#A9B9CD')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: HexColor('#B7C6D9'),
                            width: 0.1,
                          ),
                        )),
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                            hintText: 'Email Id',
                            prefixIcon: Icon(Icons.email_rounded),
                            prefixIconColor: HexColor('#A9B9CD'),
                            hintStyle: GoogleFonts.poppins(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: HexColor('#B7C6D9'),
                            width: 0.1,
                          ),
                        )),
                        child: TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_rounded),
                            suffixIcon: Icon(Icons.visibility_off_rounded),
                            prefixIconColor: HexColor('#A9B9CD'),
                            hintStyle: GoogleFonts.poppins(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: HexColor('#B7C6D9'),
                            width: 0.1,
                          ),
                        )),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock_rounded),
                            prefixIconColor: HexColor('#A9B9CD'),
                            hintStyle: GoogleFonts.poppins(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#ffffff')),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            primary: HexColor('#0125FC'),
                            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already have an account? ',
                                  style: GoogleFonts.poppins()),
                              TextSpan(
                                  text: 'Sign In',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#0125FC')),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async => {
                                          await FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                                  email: _email.text,
                                                  password: _password.text)
                                              .then((value) {
                                            print("User Created");
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Login(),
                                              ),
                                            );
                                          }).onError((error, stackTrace) {
                                            print("Error");
                                          })
                                        }),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//1F67F1
