import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';

import 'main.dart';
import 'tryin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('eaeef1'),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 200,
        backgroundColor: HexColor(
          'eaeef1',
        ),
        title: Container(
          margin: EdgeInsets.only(top: 60),
          child: Center(
            child: Image.asset(
              'lib/assets/serlogo.png',
              width: 150,
              height: 150,
            ),
            //     child: Text(
            //   'Sign In',
            //   style: TextStyle(letterSpacing: 1.2, fontFamily: 'DMSans'),
            // )
          ),
        ),
      ),
      body: FadeInUp(
        duration: Duration(milliseconds: 600),
        child: Container(
          //the big one
          decoration: BoxDecoration(
              color: HexColor('eaeef1'),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              border: Border.all(
                  width: 2, color: Colors.grey, style: BorderStyle.none)),
          child: Column(
            //first column
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: FadeInUp(
              //     duration: Duration(milliseconds: 1900),
              //     child: Container(
              //         //width: 350,
              //         margin: EdgeInsets.only(top: 30, left: 30),
              //         decoration: BoxDecoration(
              //             //color: Colors.amber,
              //             borderRadius: BorderRadius.circular(2)),
              //         child: Text(
              //           'Please Enter Your Credentials..',
              //           style: TextStyle(
              //               letterSpacing: 1.1,
              //               fontStyle: FontStyle.normal,
              //               decoration: TextDecoration.none,
              //               height: 1,
              //               fontSize: 22,
              //               fontWeight: FontWeight.bold,
              //               color: HexColor('101820'),
              //               fontFamily: 'DMSans'),
              //         )
              //         ),
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: FadeInUp(
              //     duration: Duration(milliseconds: 1900),
              //     child: Container(
              //         width: 250,
              //         height: 70,
              //         padding: EdgeInsets.all(15),
              //         margin: EdgeInsets.only(top: 30, left: 30),
              //         decoration: BoxDecoration(
              //             color: Colors.grey[200],
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Colors.grey)),
              //         child: TextField(
              //           decoration: InputDecoration(
              //               hintText: 'ID Number',
              //               hintStyle: TextStyle(
              //                   letterSpacing: 1.2,
              //                   color: HexColor('101820'),
              //                   fontFamily: 'DMSans')),
              //           keyboardType: TextInputType.number,
              //           textInputAction: TextInputAction.next,
              //         )),
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: FadeInUp(
              //     duration: Duration(milliseconds: 2000),
              //     child: Container(
              //         width: 250,
              //         height: 70,
              //         padding: EdgeInsets.all(15),
              //         margin: EdgeInsets.only(top: 30, left: 30),
              //         decoration: BoxDecoration(
              //             color: Colors.grey[200],
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Colors.grey)),
              //         child: TextField(
              //           decoration: InputDecoration(
              //               hintText: 'Phone Number',
              //               hintStyle: TextStyle(
              //                   letterSpacing: 1.2,
              //                   color: HexColor('101820'),
              //                   fontFamily: 'DMSans')),
              //           keyboardType: TextInputType.number,
              //         )),
              //   ),
              // ),
              Align(
                  alignment: Alignment.center,
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 170,
                            height: 50,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(top: 60, left: 0),
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('Create Account',
                                      style: TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 1.2,
                                        color: HexColor('2596be'),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.bold,
                                      ))),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute());
                              },
                            )),
                        Container(
                            width: 170,
                            height: 50,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(top: 60, right: 0),
                            decoration: BoxDecoration(
                                color: HexColor('2596be'),
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('Login',
                                      style: TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 1.2,
                                        color: HexColor('eaeef1'),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.bold,
                                      ))),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  )),
              Container(height: 300),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 50,
                    width: 170,
                    child: Center(
                        child: Text('Contact Us',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 20,
                                color: HexColor('101820'))))),
              ),
              Container(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50,
                    width: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.facebook_rounded, size: 30,)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.local_phone_rounded, size: 30,),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SecondScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
