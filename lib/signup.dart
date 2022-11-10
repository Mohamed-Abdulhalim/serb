// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/tryin.dart';

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
  final _formKey = GlobalKey<FormState>();
  bool _passvisi = true;
  final focusNode = FocusNode();
  String txt1 = 'الرقم السري';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
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
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: .2,
                          color: HexColor('101820'),
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.bold,
                        )),
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
                                      height: 50,
                                      child: TextFormField(
                                        focusNode: focusNode,
                                        textInputAction: TextInputAction.next,
                                        //     textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 15.0,
                                                    horizontal: 10.0),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignLabelWithHint: true,
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(' الاسم الأخير'))),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 120,
                                      child: TextFormField(
                                        focusNode: focusNode,
                                        textInputAction: TextInputAction.next,
                                        //     textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 15.0,
                                                    horizontal: 10.0),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                            alignLabelWithHint: true,
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            floatingLabelAlignment:
                                                FloatingLabelAlignment.center,
                                            label: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text('الاسم الأول'))),
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
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  //     textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      alignLabelWithHint: true,
                                      hintTextDirection: TextDirection.rtl,
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.center,
                                      label: Align(
                                          alignment: Alignment.centerRight,
                                          child:
                                              Text('رقم بطاقة الرقم القومي'))),
                                ),
                              ),
                              Container(
                                height: 10,
                              ),
                              FadeInUp(
                                duration: Duration(milliseconds: 350),
                                child: Container(
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    //     textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                      ),
                                      alignLabelWithHint: true,
                                      hintTextDirection: TextDirection.rtl,
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.center,
                                      labelStyle: TextStyle(),
                                      label: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(margin: EdgeInsets.only(right:10),child: Image.asset('lib/assets/egicon.png', width:70, height: 70,)),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'رقم الموبايل',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 17),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Container(
                              //   height: 10,
                              // ),
                              // FadeInUp(
                              //   duration: Duration(milliseconds: 450),
                              //   child: TextFormField(
                              //     textInputAction: TextInputAction.next,
                              //     //     textAlign: TextAlign.right,
                              //     textDirection: TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //         enabledBorder: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(9),
                              //           borderSide: const BorderSide(
                              //             color: Colors.grey,
                              //             width: 1.0,
                              //           ),
                              //         ),
                              //         alignLabelWithHint: true,
                              //         hintTextDirection: TextDirection.rtl,
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
                              //     textDirection: TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //         enabledBorder: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(9),
                              //           borderSide: const BorderSide(
                              //             color: Colors.grey,
                              //             width: 1.0,
                              //           ),
                              //         ),
                              //         alignLabelWithHint: true,
                              //         hintTextDirection: TextDirection.rtl,
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
                              //     textDirection: TextDirection.rtl,
                              //     decoration: InputDecoration(
                              //       enabledBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(9),
                              //         borderSide: const BorderSide(
                              //           color: Colors.grey,
                              //           width: 1.0,
                              //         ),
                              //       ),
                              //       alignLabelWithHint: true,
                              //       hintTextDirection: TextDirection.rtl,
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
                                        style: TextStyle(fontSize: 12))),
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
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
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