import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:serb/inside/cal.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:serb/inside/scanner.dart';

class MyHomePages extends StatefulWidget {
  MyHomePages({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  String alue = '';

  @override
  _MyHomePagesState createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages>
    with TickerProviderStateMixin {
  final double appBarHeight = 100.0;
  final double spaceAroundRoundButton = 4.0;
  final double roundedButtonSize = 64.0;
  TabController? _tabController;
  TextEditingController _co = TextEditingController();
  //String _res = 'Tracking number';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  String _scanBarcode = 'Unknown';

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);

      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Container(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                'Serb-Express',
                style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
              ),
            ),
            centerTitle: true,
            toolbarHeight: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            // preferredSize:
            //     Size(MediaQuery.of(context).size.width, appBarHeight),
            // child: ClipPath(
            //   clipper: BottomClipper(),
            //   child: Container(
            //     alignment: Alignment.topLeft,
            //     height: appBarHeight,
            //     color: HexColor('#63ade1'),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         IconButton(
            //             icon: Icon(
            //               Icons.menu,
            //               color: Colors.white,
            //             ),
            //             onPressed: () {}),
            //         Text(
            //           'Serb - Express',
            //           style: GoogleFonts.cairo(
            //             color: Colors.white,
            //             fontSize: 18,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         IconButton(
            //             icon: Icon(
            //               Icons.settings,
            //               color: Colors.white,
            //             ),
            //             onPressed: () {})
            //       ],
            //     ),
            //   ),
            // )
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: HexColor('#63ade1')),
            backgroundColor: HexColor('#63ade1'),
          ),
          bottomNavigationBar: MotionTabBar(
            initialSelectedTab: "الرئيسية",
            useSafeArea: true, // default: true, apply safe area wrapper
            labels: const ["الرئيسية", "إحسب", "إشحن", "فروعنا", "حسابي"],
            icons: const [
              Icons.home,
              Icons.calculate,
              Boxicons.bxs_package,
              Icons.location_city_rounded,
              Icons.person_rounded
            ],
            tabSize: 40,
            tabBarHeight: 55,
            textStyle: GoogleFonts.cairo(
              fontSize: 11,
              color: Colors.white,
              //HexColor('#0a7dcf'),
              fontWeight: FontWeight.w500,
            ),
            tabIconColor: Colors.white,
            tabIconSize: 28.0,
            tabIconSelectedSize: 26.0,
            tabSelectedColor: Colors.white,
            tabIconSelectedColor: HexColor('#63ade1'),
            tabBarColor: HexColor('#63ade1'),
            onTabItemSelected: (int value) {
              setState(() {
                _tabController!.index = value;
              });
            },
          ),
          body: Stack(
            children: [
              TabBarView(
                physics:
                    NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
                controller: _tabController,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.lightBlue,
                              Colors.amber,
                            ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 12,
                                  top: MediaQuery.of(context).size.height / 59),
                              child: Icon(
                                Icons.sunny,
                                size: 50,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width / 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    // color: Colors.green,
                                    width: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      //color: Colors.white,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      // margin: EdgeInsets.only(
                                      //     left: MediaQuery.of(context).size.width / 180),
                                      child: Text('صباح الفل',
                                          textAlign: TextAlign.end,
                                          style: GoogleFonts.cairo(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    //  color: Colors.white,
                                    // margin: EdgeInsets.only(
                                    //     left: MediaQuery.of(context).size.width / 20),
                                    child: Text('محمد علي',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.cairo(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Ships()));
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 1.1,
                                height: MediaQuery.of(context).size.height / 9,
                                color: Colors.grey[100],
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Icon(Icons.arrow_back_ios,
                                              color: HexColor('#63ade1'))),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(right: 20),
                                            // color: Colors.amber,
                                            height: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 150,
                                                    child: Text('شحناتي',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: GoogleFonts.cairo(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                                Container(
                                                    width: 150,
                                                    child: Text('شوف شحناتك',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            GoogleFonts.cairo(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13)))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // color: Colors.red,
                                            child: Center(
                                                child: Icon(
                                              Boxicons.bxs_package,
                                              size: 43,
                                              color: HexColor('#63ade1'),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Ships(),
                  // Center(
                  //   child: Text('calculate'),
                  // ),
                  MyHomes(),
                  Center(
                    child: Text("Settings"),
                  ),
                  Center(
                    child: Text('Interface'),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          child: Container(
              width: 350,
              // height: MediaQuery.of(context).size.height / 10,
              //padding: EdgeInsets.all(spaceAroundRoundButton),
              // decoration: BoxDecoration(
              //  // color: Colors.green,
              //  // shape: BoxShape.circle,
              // ),
              child: Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor(
                        '#63ade1',
                      ),
                      border: Border.all(width: 7, color: Colors.white)),
                  child: Center(
                      child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                        onPressed: () {
                          // FlutterBeep.playSysSound(42);
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Please Enter Your Tracking Number'),
                              content: Material(
                                child: TextFormField(
                                  controller: _co,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  // autofocus: true,
                                  textAlignVertical: TextAlignVertical.center,
                                  maxLines: 1,
                                  cursorHeight: 25,
                                  // textAlign: TextAlign.center,
                                  keyboardType: TextInputType.phone,
                                  cursorColor: HexColor('101820'),
                                  style: GoogleFonts.cairo(),
                                  textDirection: TextDirection.ltr,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    isDense: true,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(9),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    // alignLabelWithHint: true,
                                    hintTextDirection: TextDirection.ltr,
                                    // floatingLabelAlignment: FloatingLabelAlignment.center,
                                    prefixIcon: IconButton(
                                      onPressed: () async {
                                        await scanBarcodeNormal();
                                        setState(() {
                                          _co.text = _scanBarcode;
                                          print(_co);
                                        });
                                      },
                                      icon: Icon(
                                        Boxicons.bx_barcode_reader,
                                        color: HexColor('#63ade1'),
                                        size: 25,
                                      ),
                                    ),
                                    label: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Tracking Number',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () async {
                                        // await scanBarcodeNormal();
                                        // setState(() {
                                        //   _co.text = _scanBarcode;
                                        //   print(_co);
                                        // });
                                      },
                                      icon: Icon(
                                        Icons.search,
                                        color: HexColor('#63ade1'),
                                        size: 25,
                                      ),
                                    ),
                                    suffixIconColor: HexColor('#63ade1'),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        icon: Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        )),
                  )),
                ),
              )
              // Material(
              //     borderOnForeground: false,
              //     type: MaterialType.transparency,
              //     child: Center(
              //       child: Container(
              //         height: 50,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(9),
              //             color: Colors.white),
              //         child: Center(
              //           child: TextFormField(
              //             textAlignVertical: TextAlignVertical.center,
              //             maxLines: 1,
              //             cursorHeight: 25,
              //             // textAlign: TextAlign.center,
              //             keyboardType: TextInputType.phone,
              //             cursorColor: HexColor('101820'),
              //             style: GoogleFonts.cairo(),
              //             textDirection: TextDirection.ltr,
              //             decoration: InputDecoration(
              //                 focusedBorder: InputBorder.none,
              //                 contentPadding: EdgeInsets.all(10),
              //                 isDense: true,
              //                 floatingLabelBehavior:
              //                     FloatingLabelBehavior.never,
              //                 enabledBorder: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(9),
              //                   borderSide: BorderSide.none,
              //                 ),
              //                 // alignLabelWithHint: true,
              //                 hintTextDirection: TextDirection.ltr,
              //                 // floatingLabelAlignment: FloatingLabelAlignment.center,
              //                 label: Align(
              //                   alignment: Alignment.centerLeft,
              //                   child: Text(
              //                     'Enter Tracking Number',
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //                 suffixIcon: IconButton(
              //                   onPressed: () {},
              //                   icon: Icon(
              //                     Icons.search,
              //                     color: HexColor('#63ade1'),
              //                     size: 25,
              //                   ),
              //                 ),
              //                 suffixIconColor: HexColor('#63ade1')),
              //           ),
              //         ),
              //       ),
              //     ))
              // RawMaterialButton(
              //   elevation: 0,
              //   constraints: BoxConstraints.tightFor(
              //       width: roundedButtonSize, height: roundedButtonSize),
              //   shape:
              //       StadiumBorder(side: BorderSide(width: 4, color: Colors.grey)),
              //   child: Icon(Icons.person),
              //   onPressed: () {},
              //   fillColor: Colors.white,
              // ),
              ),
          top: size.width / 4,
          right: size.width / 22,
          // left: (size.width / 2) -
          //     (roundedButtonSize / 2) -
          //     spaceAroundRoundButton,
          // top: appBarHeight -
          //     (roundedButtonSize * 0.25) -
          //     spaceAroundRoundButton,
        ),
      ],
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.75);

    var firstControlPoint = Offset(size.width * 0.25, size.height);
    var firstEndPoint = Offset(size.width * 0.5, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.75, size.height);
    var secondEndPoint = Offset(size.width, size.height * 0.75);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
