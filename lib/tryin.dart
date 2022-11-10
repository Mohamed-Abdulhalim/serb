// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';

class Tryin extends StatelessWidget {
  const Tryin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('2596be'),
      // appBar: AppBar(
      //   elevation: 0,
      //   toolbarHeight: 200,
      //   backgroundColor: HexColor(
      //     '2596be',
      //   ),
      //   title: Center(
      //     child: Image.asset(
      //       'lib/assets/serlogo.png',
      //       width: 150,
      //       height: 150,
      //     ),
      //   ),
      // ),
      body: FadeInUp(
        duration: Duration(milliseconds: 1400),
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
                  margin: EdgeInsets.only(top:60),
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
                  duration: Duration(milliseconds: 1900),
                  child: Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        'Please Choose An Account',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                            height: 1,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: HexColor('101820'),
                            fontFamily: 'DMSans'),
                      )),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: FadeInUp(
                    duration: Duration(milliseconds: 2000),
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
                                  child: Text('Business Account',
                                      style: TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 1.2,
                                        color: HexColor('2596be'),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.bold,
                                      ))),
                              onPressed: () {},
                            )),
                        Container(
                            width: 170,
                            height: 50,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(top: 60, right: 0),
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('Individual Account',
                                      style: TextStyle(
                                        fontSize: 13,
                                        letterSpacing: 1.2,
                                        color: HexColor('2596be'),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.bold,
                                      ))),
                              onPressed: () {},
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
