import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'barcode_scanner_controller.dart';
import 'barcode_scanner_without_controller.dart';

//void main() => runApp(const MaterialApp(home: MyHome()));
final playert = AudioPlayer();

class MyHomes extends StatefulWidget {
  String? bar = '';
  String? bar2 = '';
  Color contain = Colors.transparent;
  Color contain2 = Colors.blue;
  bool isVisible = false;
  MyHomes({Key? key, this.bar, this.bar2}) : super(key: key);

  @override
  State<MyHomes> createState() => _MyHomesState();
}

class _MyHomesState extends State<MyHomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 300,
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: true,
                      child: Container(
                        width: 300,
                        height: 50,
                        color: widget.contain2,
                        child: Center(
                            child: Text(widget.bar ?? '',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'DMSans'))),
                      ),
                    ),
                    Visibility(
                      visible: widget.isVisible,
                      child: Container(
                        width: 300,
                        height: 50,
                        color: widget.contain2,
                        child: Center(
                            child: Text(widget.bar2 ?? '',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'DMSans'))),
                      ),
                    ),
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BarcodeScannerWithController(),
                  ),
                );
              },
              child: const Text('MobileScanner with Controller'),
            ),
            ElevatedButton(
              onPressed: () async {
                await playert;
                final duration = playert.setAsset('lib/assets/beep1.mp3');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         const BarcodeScannerWithoutController(),
                //   ),
                // );
              },
              child: const Text('MobileScanner without Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
