import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_beep/flutter_beep.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BarcodeScannerDemo(),
    );
  }
}

class BarcodeScannerDemo extends StatefulWidget {
  const BarcodeScannerDemo({Key? key}) : super(key: key);
  @override
  _BarcodeScannerDemoState createState() => _BarcodeScannerDemoState();
}

class _BarcodeScannerDemoState extends State<BarcodeScannerDemo> {
  String _scanBarcode = 'Unknown';

  /// For Continuous scan
  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> barcodeScan() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  Future<void> _matwait() async {
    setState(() {
      if (_scanBarcode != 'Unknown') {
        FlutterBeep.playSysSound(42);
      } else if (_scanBarcode != '-1') {
        FlutterBeep.playSysSound(42);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Barcode Scanner Demo'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.cyan,
        ),
        body: Builder(builder: (BuildContext context) {
          return Container(
              alignment: Alignment.center,
              child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 50,
                    ),
                    Text('Scan result : $_scanBarcode\n',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                          ),
                          onPressed: () async {
                            await barcodeScan();
                            _matwait();
                          },
                          child: const Text('Barcode Scan',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold))),
                    ),
                  ]));
        }));
  }
}
