// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unused_import, use_key_in_widget_constructors
import 'package:flutter_beep/flutter_beep.dart';
// import 'package:try_again/Screens/Scanner/scanner.dart';
import 'dart:async';
// import 'Screens/Scanner/barcode_scanner_controller.dart';
// import 'Screens/first.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_animations/simple_animations.dart';
// import 'Screens/Scanner/newone.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: BarcodeScannerWithController(),//MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyHomePag extends StatefulWidget {
  static final kInitialPosition = LatLng(-33.8567844, 151.213108);
  const MyHomePag({super.key});
  @override
  _MyHomePagState createState() => _MyHomePagState();
}

class _MyHomePagState extends State<MyHomePag> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
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
              width: 100,
              height: 100,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('2596be'),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 200,
        backgroundColor: HexColor(
          '2596be',
        ),
        title: const Center(
            child: Text(
          'Sign In',
          style: TextStyle(letterSpacing: 1.2, fontFamily: 'DMSans'),
        )),
      ),
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
                alignment: Alignment.centerLeft,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        'Welcome Back',
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
                alignment: Alignment.centerLeft,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Container(
                      //width: 350,
                      margin: EdgeInsets.only(top: 30, left: 30),
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        'Please Enter Your Credentials..',
                        style: TextStyle(
                            letterSpacing: 1.1,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                            height: 1,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: HexColor('101820'),
                            fontFamily: 'DMSans'),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Container(
                      width: 250,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'ID Number',
                            hintStyle: TextStyle(
                                letterSpacing: 1.2,
                                color: HexColor('101820'),
                                fontFamily: 'DMSans')),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: FadeInUp(
                  duration: Duration(milliseconds: 2000),
                  child: Container(
                      width: 250,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                letterSpacing: 1.2,
                                color: HexColor('101820'),
                                fontFamily: 'DMSans')),
                        keyboardType: TextInputType.number,
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: FadeInUp(
                  duration: Duration(milliseconds: 2100),
                  child: Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                        color: HexColor('2596be'),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 30, left: 30),
                    padding: EdgeInsets.only(left: 10),
                    child: Builder(builder: (context) {
                      return Container(
                        child: TextButton(
                          child: Text(
                            _txt,
                            style: TextStyle(
                              letterSpacing: 1.2,
                              color: Colors.white,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.bold,
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
                                    initialPosition: MyHomePag.kInitialPosition,
                                    useCurrentLocation: true,
                                    selectInitialPosition: true,

                                    //usePlaceDetailSearch: true,
                                    onPlacePicked: (result) {
                                      selectedPlace = result;
                                      Navigator.of(context).pop();
                                      setState(() {
                                        _txt = selectedPlace.formattedAddress ??
                                            "";
                                      });
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
