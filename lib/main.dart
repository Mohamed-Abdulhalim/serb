// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unused_field

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/business.dart';
import 'package:serb/inside/myacc.dart';
import 'package:serb/inside/homePage.dart';
import 'package:serb/inside/scanner.dart';
import 'package:serb/inside/txtchange.dart';
import 'drawer/newShip.dart';
import 'inside/newshipment.dart';
import 'firstPage.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('ar')],
      title: 'Splash Screen',
      // theme: ThemeData(
      //   primarySwatch: MaterialColor(primary, swatch),
      // ),
      home: MyHomePage()//BarcodeScannerWithController()
          // Directionality(
          //   textDirection: TextDirection.rtl,
          // child:
          //MyHomePages(title: '') //Newsh()
      , //MyAcc(),//MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  static final kInitialPosition = LatLng(-33.8567844, 151.213108);
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/serlogo.png',
              scale: 0.5,
              width: 200,
              height: 200,
            ),
          ],
        ));
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  PickResult selectedPlace = PickResult();
  String _txt = 'Choose Your Location';
  double _hei = 60;
  @override
  Widget build(BuildContext context) {
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
                              '???????? ???????? ????????????',
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
                              '?????????? ??????????????',
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
                              '??????????',
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
                              '???????????? ????????????????',
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
                              '?????????? ????????????????',
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
                              '???????? ?????????????? ????????????????',
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
          elevation: 0,
          backgroundColor: HexColor('eaeef1'),
          iconTheme: IconThemeData(color: Colors.grey, size: 30)),
      resizeToAvoidBottomInset: false,
      //backgroundColor: HexColor('2596be'),
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
      //     //     child: Text(
      //     //   'Sign In',
      //     //   style: TextStyle(letterSpacing: 1.2, fontFamily: 'DMSans'),
      //     // )
      //   ),
      // ),
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
                  duration: Duration(milliseconds: 1500),
                  child: Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        '???????? ???? ?????????????? ?????? ????????????',
                        style: GoogleFonts.cairo(
                            fontSize: 17,
                            letterSpacing: .8,
                            color: HexColor('101820'),
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
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
                                color: HexColor('#0a7dcf'),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('???????? ??????????',
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
                                color: HexColor('#0a7dcf'),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: TextButton(
                              child: Center(
                                  child: Text('???????? ??????????',
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

              // Align(
              //   alignment: Alignment.center,
              //   child: FadeInUp(
              //     duration: Duration(milliseconds: 2100),
              //     child: Container(
              //       width: 300,
              //       height: 70,
              //       decoration: BoxDecoration(
              //           color: HexColor('2596be'),
              //           borderRadius: BorderRadius.circular(20)),
              //       margin: EdgeInsets.only(top: 60, left: 0),
              //       padding: EdgeInsets.only(left: 10),
              //       child: Builder(builder: (context) {
              //         return Container(
              //           child: TextButton(
              //             child: Text(
              //               _txt,
              //               style: TextStyle(
              //                 letterSpacing: 1.2,
              //                 color: Colors.white,
              //                 fontFamily: 'DMSans',
              //                 fontWeight: FontWeight.bold,
              //               ),
              //               maxLines: 2,
              //               textAlign: TextAlign.center,
              //             ),
              //             onPressed: () async {
              //               await FlutterBeep.playSysSound(
              //                   AndroidSoundIDs.TONE_CDMA_ABBR_ALERT);

              //               // ignore: use_build_context_synchronously
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) {
              //                     return PlacePicker(
              //                       apiKey:
              //                           'AIzaSyCQxJRctkKeyb79U7IpKc1Wi3Tdbcd71Lc',
              //                       initialPosition:
              //                           MyHomePage.kInitialPosition,
              //                       useCurrentLocation: true,
              //                       selectInitialPosition: true,

              //                       //usePlaceDetailSearch: true,
              //                       onPlacePicked: (result) {
              //                         selectedPlace = result;
              //                         Navigator.of(context).pop();
              //                         setState(() {
              //                           _txt = selectedPlace.formattedAddress ??
              //                               "";
              //                         });
              //                       },
              //                     );
              //                   },
              //                 ),
              //               );
              //             },
              //           ),
              //         );
              //       }),
              //     ),
              //   ),
              // ),
            ],
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignupBus(),
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
