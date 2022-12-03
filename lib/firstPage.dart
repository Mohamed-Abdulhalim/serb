// ignore_for_file: unused_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';

import 'drawer/newShip.dart';
import 'logcus.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double _hei = 60;
    return Scaffold(
      endDrawer: SafeArea(
        child: Drawer(
          width: double.infinity,
          child: Container(
            color: HexColor('eaeef1'),
            child: ListView(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: HexColor('eaeef1'),
                        border: Border(
                            bottom: BorderSide(width: .5, color: Colors.grey))),
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.grey,
                          )),
                    )),
                // Container(
                //   height: 20,
                // ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: 60,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute5());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'تتبع برقم الشحنة',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.local_shipping_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'قنوات الإتصال',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.local_phone_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'المدن',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.location_city_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الشروط والأحكام',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.newspaper_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'سياسة الخصوصية',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.shield_outlined,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'حقوق الخدمات البريدية',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.contact_mail_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: .5, color: Colors.grey))),
                  height: _hei,
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 22),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Serb.express.com',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            Container(
                              width: 8,
                            ),
                            const Icon(Icons.web_rounded,
                                size: 30, color: Colors.black87),
                          ],
                        ),
                      )),
                )
              ],
            ),
            //   child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('eaeef1'),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey, size: 30),
        elevation: 0,
        backgroundColor: HexColor(
          'eaeef1',
        ),

        // title: Container(
        //   margin: EdgeInsets.only(top: 60),
        //   child: Center(
        //     child: Image.asset(
        //       'lib/assets/serlogo.png',
        //       width: 150,
        //       height: 150,
        //     ),
        //     //     child: Text(
        //     //   'Sign In',
        //     //   style: TextStyle(letterSpacing: 1.2, fontFamily: 'DMSans'),
        //     // )
        //   ),
        // ),
      ),
      body: FadeInUp(
        duration: const Duration(milliseconds: 600),
        child: Container(
          //the big one
          decoration: BoxDecoration(
              color: HexColor('eaeef1'),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              border: Border.all(
                  width: 2, color: Colors.grey, style: BorderStyle.none)),
          child: Column(
            //first column
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Image.asset(
                      'lib/assets/serlogo.png',
                      width: 150,
                      height: 150,
                    ),
                  )),
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
                    duration: const Duration(milliseconds: 1600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 170,
                            height: 50,
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.only(top: 60, left: 0),
                            decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('إنشاء حساب جديد',
                                      style: GoogleFonts.cairo(
                                          fontSize: 13,
                                          letterSpacing: .8,
                                          color: HexColor('#0a7dcf'),
                                          fontWeight: FontWeight.bold)
                                      // TextStyle(
                                      //   fontSize: 13,
                                      //   letterSpacing: 1.2,
                                      //   color: HexColor('2596be'),
                                      //   fontFamily: 'DMSans',
                                      //   fontWeight: FontWeight.bold,
                                      // )
                                      )),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute());
                              },
                            )),
                        Container(
                            width: 170,
                            height: 50,
                            padding: const EdgeInsets.all(3),
                            margin: const EdgeInsets.only(top: 60, right: 0),
                            decoration: BoxDecoration(
                                color: HexColor('#0a7dcf'),
                                // color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('تسجيل الدخول',
                                      style: GoogleFonts.cairo(
                                          fontSize: 13,
                                          letterSpacing: 1.2,
                                          color: HexColor('eaeef1'),
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute3());
                              },
                            )),
                      ],
                    ),
                  )),
              Container(height: 200),
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
                            icon: const Icon(
                              Icons.whatsapp_outlined,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook_rounded,
                              size: 30,
                            )),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.local_phone_rounded,
                            size: 30,
                          ),
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

Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CusLog(),
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


Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TrackShipp(),
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