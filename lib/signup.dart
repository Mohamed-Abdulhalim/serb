// ignore_for_file: unused_import, prefer_const_constructors, unused_field

import 'dart:async';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/inside/otp.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:serb/inside/snackBar.dart';
import 'package:serb/tryin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'drawer/newShip.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:intl/intl.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SinUp();
  }
}

class SinUp extends StatefulWidget {
  SinUp({super.key});

  @override
  State<SinUp> createState() => _SinUpState();
}

class _SinUpState extends State<SinUp> {
  TextEditingController dateInput = TextEditingController();
  String _txtt = 'تاريخ ميلادك';
  PickResult selectedPlace = PickResult();
  String _txt = 'عنوانك';
  String _ver = '';
  final _formKey = GlobalKey<FormState>();
  bool _passvisi = true;
  final focusNode = FocusNode();
  final TextEditingController _cont = TextEditingController();
  String txt1 = 'رقمك السري';
  double _hei = 60;
  @override
  void initState() {
    dateInput.text = "";
    _txt; //set the initial value of text field
    super.initState();
  }

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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                                  letterSpacing: .2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey[800]),
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
                  width: 300,
                  height: 100,
                  //color: Colors.black,
                  child: Center(
                    child: Text('تسجيل حساب جديد - أفراد',
                        style: GoogleFonts.cairo(
                          letterSpacing: .2,
                          fontWeight: FontWeight.w500,
                          color: HexColor('101820'),
                          fontSize: 15,
                        )
                        // TextStyle(
                        //   fontSize: 15,
                        //   letterSpacing: .2,
                        //   color: HexColor('101820'),
                        //   fontFamily: 'DMSans',
                        //   fontWeight: FontWeight.w500,
                        // )
                        ),
                  ),
                ),
                Container(
                    // padding: EdgeInsets.all(5),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    //   border: Border.all(color: Colors.black)
                    // ),
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
                                      width: 120,
                                      height: 60,
                                      child: TextFormField(
                                        cursorColor: HexColor('101820'),
                                        controller: _cont,
                                        style: GoogleFonts.cairo(
                                          letterSpacing: .2,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        //      focusNode: focusNode,
                                        //     textAlign: TextAlign.right,
                                        textDirection: ui.TextDirection.rtl,
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
                                                ui.TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  ' اسمك الأخير',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none),
                                                ))),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 120,
                                      child: TextFormField(
                                        cursorColor: HexColor('101820'),
                                        style: GoogleFonts.cairo(
                                          letterSpacing: .2,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        //  focusNode: focusNode,
                                        //     textAlign: TextAlign.right,
                                        textDirection: ui.TextDirection.rtl,
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
                                                ui.TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text('اسمك الأول'))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              FadeInUp(
                                duration: Duration(milliseconds: 250),
                                child: Container(
                                  height: 50,
                                  child: TextFormField(
                                    cursorColor: HexColor('101820'),
                                    style: GoogleFonts.cairo(
                                      letterSpacing: .2,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    //     textAlign: TextAlign.right,
                                    textDirection: ui.TextDirection.rtl,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left: 9,
                                          right: 7,
                                        ),
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
                                        //  alignLabelWithHint: true,
                                        hintTextDirection: ui.TextDirection.rtl,
                                        floatingLabelAlignment:
                                            FloatingLabelAlignment.center,
                                        label: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text('رقم بطاقتك '))),
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              FadeInUp(
                                duration: Duration(milliseconds: 250),
                                child: Container(
                                  height: 50,
                                  child: TextFormField(
                                    obscureText: true,
                                    cursorColor: HexColor('101820'),
                                    style: GoogleFonts.cairo(
                                      letterSpacing: .2,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    //     textAlign: TextAlign.right,
                                    textDirection: ui.TextDirection.rtl,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left: 9,
                                          right: 7,
                                        ),
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
                                        //  alignLabelWithHint: true,
                                        hintTextDirection: ui.TextDirection.rtl,
                                        floatingLabelAlignment:
                                            FloatingLabelAlignment.center,
                                        label: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text('رقمك السري'))),
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                height: MediaQuery.of(context).size.height / 14,
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Center(
                                  child: TextButton(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.calendar_today),
                                        Container(
                                          width: 5,
                                        ),
                                        Text(
                                          _txtt,
                                          style: GoogleFonts.cairo(
                                              letterSpacing: .2,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey[700],
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    onPressed: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                              context: context,
                                              locale: const Locale("ar", "AR"),
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(1940),
                                              lastDate: DateTime(2030),
                                              builder: (BuildContext context,
                                                  Widget? child) {
                                                return Theme(
                                                  data: ThemeData.dark(),
                                                  child: child!,
                                                );
                                              });
                                      if (pickedDate != null) {
                                        print(
                                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        print(
                                            formattedDate); //formatted date output using intl package =>  2021-03-16
                                        setState(() {
                                          _txtt =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {}
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              FadeInUp(
                                duration: Duration(milliseconds: 350),
                                child: Container(
                                  height: 60,
                                  child: TextFormField(
                                    cursorColor: HexColor('101820'),
                                    style: GoogleFonts.cairo(
                                      letterSpacing: .2,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    keyboardType: TextInputType.phone,
                                    textInputAction: TextInputAction.done,
                                    //     textAlign: TextAlign.right,
                                    textDirection: ui.TextDirection.rtl,
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
                                        //alignLabelWithHint: true,
                                        hintTextDirection: ui.TextDirection.rtl,
                                        floatingLabelAlignment:
                                            FloatingLabelAlignment.center,
                                        labelStyle: TextStyle(),
                                        label: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'رقم تليفونك',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        suffixIcon: Container(
                                          width: 60,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              // image: DecorationImage(
                                              //     image: AssetImage(
                                              //         'lib/assets/fllag.png')),

                                              border: Border(
                                                  left: BorderSide(
                                                      color: Colors.grey,
                                                      width: 1))),
                                          child: Center(
                                            child: Image.asset(
                                              'lib/assets/fllag.png',
                                              width: 60,
                                              height: 60,
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              Container(height: 10),
                              FadeInUp(
                                  child: Container(
                                height: MediaQuery.of(context).size.height / 13,
                                width: MediaQuery.of(context).size.width / 1.5,
                                decoration: BoxDecoration(
                                    color: HexColor('#44ace4'),
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextButton(
                                  child: Text(
                                    _txt,
                                    style: GoogleFonts.cairo(
                                      letterSpacing: .2,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                  onPressed: () async {
                                    //   await FlutterBeep.playSysSound(
                                    //      AndroidSoundIDs.TONE_CDMA_ABBR_ALERT);

                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return PlacePicker(
                                            apiKey:
                                                'AIzaSyCQxJRctkKeyb79U7IpKc1Wi3Tdbcd71Lc',
                                            initialPosition:
                                                MyHomePag.kInitialPosition,
                                            useCurrentLocation: true,
                                            selectInitialPosition: true,

                                            //usePlaceDetailSearch: true,
                                            onPlacePicked: (result) {
                                              selectedPlace = result;
                                              Navigator.of(context).pop();
                                              setState(() {
                                                _txt = selectedPlace
                                                        .formattedAddress ??
                                                    "";
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
                              )),
                              // Container(
                              //   height: 10,
                              // ),
                              // FadeInUp(
                              //   duration: Duration(milliseconds: 450),
                              //   child: TextFormField(
                              //     textInputAction: TextInputAction.next,
                              //     //     textAlign: TextAlign.right,
                              //     textDirection: ui.TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //         enabledBorder: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(9),
                              //           borderSide: const BorderSide(
                              //             color: Colors.grey,
                              //             width: 1.0,
                              //           ),
                              //         ),
                              //         alignLabelWithHint: true,
                              //         hintTextDirection: ui.TextDirection.rtl,
                              //         floatingLabelAlignment:
                              //             FloatingLabelAlignment.center,
                              //         label: Align(
                              //             alignment: Alignment.centerRight,
                              //             child: Text('المحافظة'))),
                              //   ),
                              // ),
                              // Container(
                              //   height: 10,
                              // ),
                              // FadeInUp(
                              //   duration: Duration(milliseconds: 550),
                              //   child: TextFormField(
                              //     textInputAction: TextInputAction.next,
                              //     //     textAlign: TextAlign.right,
                              //     textDirection: ui.TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //         enabledBorder: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(9),
                              //           borderSide: const BorderSide(
                              //             color: Colors.grey,
                              //             width: 1.0,
                              //           ),
                              //         ),
                              //         alignLabelWithHint: true,
                              //         hintTextDirection: ui.TextDirection.rtl,
                              //         floatingLabelAlignment:
                              //             FloatingLabelAlignment.center,
                              //         label: Align(
                              //             alignment: Alignment.centerRight,
                              //             child: Text('المدينة'))),
                              //   ),
                              // ),
                              // Container(
                              //   height: 10,
                              // ),
                              // FadeInUp(
                              //   duration: Duration(milliseconds: 650),
                              //   child: TextFormField(
                              //     obscureText: _passvisi,
                              //     textInputAction: TextInputAction.done,
                              //     //  textAlign: TextAlign.right,
                              //     textDirection: ui.TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //       enabledBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(9),
                              //         borderSide: const BorderSide(
                              //           color: Colors.grey,
                              //           width: 1.0,
                              //         ),
                              //       ),
                              //       alignLabelWithHint: true,
                              //       hintTextDirection: ui.TextDirection.rtl,
                              //       floatingLabelAlignment:
                              //           FloatingLabelAlignment.center,
                              //       label: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         children: [
                              //           IconButton(
                              //             icon: Icon(
                              //               _passvisi
                              //                   ? Icons.visibility
                              //                   : Icons.visibility_off,
                              //             ),
                              //             onPressed: () {
                              //               setState(() {
                              //                 _passvisi = !_passvisi;
                              //               });
                              //             },
                              //           ),
                              //           Text(txt1),
                              //         ],
                              //       ),

                              //     ),
                              //   ),
                              // ),
                              Container(
                                height: 60,
                                child: Center(
                                    child: Text(
                                        'بالتسجيل أنا أوافق على السياسات والشروط والأحكام',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.cairo(
                                          letterSpacing: .2,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.5,
                                          color: HexColor('101820'),
                                        ))),
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: HexColor('#44ace4'),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: TextButton(
                                        onPressed: () async {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyHomePag()));

                                          // await Firebase.initializeApp();
                                          // FirebaseAuth auth =
                                          //     FirebaseAuth.instance;

                                          // await auth
                                          //     .verifyPhoneNumber(
                                          //       phoneNumber: '+201127084494',
                                          //       verificationFailed:
                                          //           (FirebaseAuthException e) {
                                          //         if (e.code ==
                                          //             'invalid-phone-number') {
                                          //           print(
                                          //               'The provided phone number is not valid.');
                                          //         }

                                          //         // Handle other errors
                                          //       },
                                          //       codeSent: (String
                                          //               verificationId,
                                          //           int? resendToken) async {
                                          //         // Update the UI - wait for the user to enter the SMS code
                                          //         // String smsCode = '4578';

                                          //         // Create a PhoneAuthCredential with the code
                                          //         // PhoneAuthCredential credential =
                                          //         //     PhoneAuthProvider.credential(
                                          //         //         verificationId: _ver,
                                          //         //         smsCode: _cont.text);

                                          //         // Sign the user in (or link) with the credential
                                          //         // await auth.signInWithCredential(
                                          //         //     credential);
                                          //       },
                                          //       codeAutoRetrievalTimeout:
                                          //           (String verificationId) {
                                          //         // Auto-resolution timed out...
                                          //       },
                                          //       verificationCompleted:
                                          //           (PhoneAuthCredential
                                          //               credential) async {
                                          //         // ANDROID ONLY!

                                          //         // Sign the user in (or link) with the auto-generated credential
                                          //         await auth
                                          //             .signInWithCredential(
                                          //                 credential);
                                          //       },
                                          //     )
                                          //     .then((value) => Navigator.push(
                                          //         context,
                                          //         MaterialPageRoute(
                                          //             builder: (context) =>
                                          //                 OTPScreen(
                                          //                     '+201127084494'))));
                                        },
                                        child: Text(
                                          'سجل الحساب',
                                          style: GoogleFonts.cairo(
                                              letterSpacing: .2,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ))),
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
