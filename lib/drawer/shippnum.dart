// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, unused_field

import 'dart:async';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/tryin.dart';

class TrackShipp extends StatelessWidget {
  const TrackShipp({super.key});

  @override
  Widget build(BuildContext context) {
    return TrSp();
  }
}

class TrSp extends StatefulWidget {
  const TrSp({super.key});

  @override
  State<TrSp> createState() => _TrSpState();
}

class _TrSpState extends State<TrSp> {
  final _formKey = GlobalKey<FormState>();
  // bool _passvisi = true;
  final focusNode = FocusNode();
  final TextEditingController _cont = TextEditingController();
  double _hei = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(
        'eaeef1',
      ),
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
                        onPressed: () {},
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
                              'إتصل بنا',
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
                  height: 40,
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
                                child: Container(
                                  height: 60,
                                  width: 290,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    cursorColor: HexColor('101820'),
                                    style: GoogleFonts.cairo(),
                                    textDirection: TextDirection.rtl,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 9, right: 7),
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
                                        hintTextDirection: TextDirection.rtl,
                                        floatingLabelAlignment:
                                            FloatingLabelAlignment.center,
                                        label: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text('رقم الشحنة'))),
                                  ),
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
                                          'تتبع الشحنة',
                                          style: GoogleFonts.cairo(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ))),
                              ),
                            ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => SignupPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
