import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:official_vbuyy/screens/client/register.dart';
import 'package:official_vbuyy/screens/common/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _email = TextEditingController();
  var _password = TextEditingController();
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
                  margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headline2,
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
                          ),
                        ),
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                            hintText: 'Email Id',
                            prefixIcon: Icon(Icons.email_rounded),
                            prefixIconColor: HexColor('#A9B9CD'),
                            hintStyle: GoogleFonts.play(),
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
                          ),
                        ),
                        child: TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_rounded),
                            prefixIconColor: HexColor('#A9B9CD'),
                            hintStyle: GoogleFonts.play(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: _email.text,
                                    password: _password.text)
                                .then((value) {
                              print('Logged In');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            });
                          },
                          child: Text(
                            'Login',
                            style: Theme.of(context).textTheme.headline4,
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
                          style: GoogleFonts.play(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: HexColor('#A9B9CD')),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Social Media Buttons
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
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Don\'t have an account? ',
                                  style: GoogleFonts.play()),
                              TextSpan(
                                  text: ' Create',
                                  style: GoogleFonts.play(
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('#0125FC')),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Register(),
                                            ),
                                          ),
                                        }),
                            ],
                          ),
                        ),
                      ),
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
