// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'dart:async';
import 'dart:ui';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/tryin.dart';

import 'signup.dart';

class CusLog extends StatelessWidget {
  const CusLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SinUp();
  }
}

class SinUp extends StatefulWidget {
  const SinUp({super.key});

  @override
  State<SinUp> createState() => _SinUpState();
}

class _SinUpState extends State<SinUp> {
  final _formKey = GlobalKey<FormState>();
  bool _passvisi = true;
  final focusNode = FocusNode();
  final TextEditingController _cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(
          'eaeef1',
        ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue,
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, size: 30),
        elevation: 0,
        backgroundColor: HexColor('eaeef1'),
        // toolbarHeight: 10,
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                size: 35, color: HexColor('#44ace4')),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          ;
        },
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 100,
                  //color: Colors.black,
                  child: Center(
                    child: Text('تسجيل دخول العملاء',
                        style: GoogleFonts.cairo(
                            color: HexColor('101820'),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .3)),
                  ),
                ),
                Container(
                    width: 250,
                    child: Form(
                        key: _formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeInUp(
                                duration: Duration(milliseconds: 150),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 60,
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        initialValue: '+20',
                                        cursorColor: HexColor('101820'),
                                        //controller: _cont,
                                        style: GoogleFonts.cairo(),
                                        textDirection: TextDirection.rtl,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 9, right: 7),
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.never,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            //     alignLabelWithHint: true,
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  'كود الدولة',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none),
                                                ))),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 170,
                                      child: TextFormField(
                                        keyboardType: TextInputType.phone,
                                        cursorColor: HexColor('101820'),
                                        style: GoogleFonts.cairo(),
                                        textDirection: TextDirection.rtl,
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 9, right: 7),
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.never,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            //     alignLabelWithHint: true,
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text('رقم الهاتف'))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: HexColor('#44ace4'),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'تسجيل الحساب',
                                          style: GoogleFonts.cairo(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ))),
                              ),
                              Container(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 50,
                                  width: 120,
                                  child: Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(_createRoute());
                                          },
                                          child: Center(
                                            child: Text(
                                              'تسجيل حساب جديد',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.cairo(
                                                  fontSize: 10,
                                                  color: HexColor('101820'),
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1),
                                            ),
                                          ))),
                                ),
                              )
                            ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignupPage(),
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
