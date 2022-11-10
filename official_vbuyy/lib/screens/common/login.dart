import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(20),
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/login.png'),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: HexColor('#000')),
                  ),
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
                          decoration: InputDecoration(
                            hintText: 'Password',
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
                            'Login',
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
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          'Or, login with',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: HexColor('#A9B9CD')),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Social Media Buttons
                      Container(
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              color: HexColor('#F5F6F9'),
                              child: Icon(Icons.facebook_outlined),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              color: HexColor('#F5F6F9'),
                              child: Icon(Icons.mail_outline),
                            ),
                          ],
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
