// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, sized_box_for_whitespace, unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/business.dart';
import 'package:serb/logbus.dart';
import 'package:serb/logcus.dart';
import 'package:serb/tryin.dart';
import 'login.dart';
import 'signup.dart';

class Chose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chose1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Chose1 extends StatefulWidget {
  const Chose1({super.key});

  @override
  State<Chose1> createState() => _Chose1State();
}

class _Chose1State extends State<Chose1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(
          'eaeef1',
        ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue,
          //   child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('eaeef1'),
        iconTheme: IconThemeData(color: Colors.grey, size: 30),
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                size: 35, color: HexColor('#44ace4')),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      // backgroundColor: HexColor('2596be'),
      body: FadeInUp(
        duration: Duration(milliseconds: 1000),
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
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Center(
                    child: Image.asset(
                      'lib/assets/serlogo.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1600),
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 170,
                              height: 50,
                              child: Icon(
                                Icons.add_business_outlined,
                                size: 35,
                              )),
                          Container(
                              width: 170,
                              height: 50,
                              child:
                                  Icon(Icons.account_circle_outlined, size: 35))
                        ],
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 150,
                            height: 50,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                color: HexColor('#0d87da'),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('حساب أعمال',
                                      style: GoogleFonts.cairo(
                                          fontSize: 13,
                                          letterSpacing: .8,
                                          color: HexColor('eaeef1'),
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute2());
                              },
                            )),
                        Container(
                            width: 150,
                            height: 50,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                color: HexColor('#0d87da'),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('حساب أفراد',
                                      style: GoogleFonts.cairo(
                                          fontSize: 13,
                                          letterSpacing: .8,
                                          color: HexColor('eaeef1'),
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute());
                              },
                            )),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CusLog(),
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BusLog(),
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
