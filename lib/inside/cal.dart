// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   // final String? restorationId;

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// /// RestorationProperty objects can be used because of RestorationMixin.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   TextEditingController dateInput = TextEditingController();
//   String _txt = 'تاريخ ميلادك';

//   @override
//   void initState() {
//     dateInput.text = "";
//     _txt; //set the initial value of text field
//     super.initState();
//   }

//   // // In this example, the restoration ID for the mixin is passed in through
//   // // the [StatefulWidget]'s constructor.
//   // @override
//   // String? get restorationId => widget.restorationId;

//   // final RestorableDateTime _selectedDate =
//   //     RestorableDateTime(DateTime(2021, 7, 25));
//   // late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
//   //     RestorableRouteFuture<DateTime?>(
//   //   onComplete: _selectDate,
//   //   onPresent: (NavigatorState navigator, Object? arguments) {
//   //     return navigator.restorablePush(
//   //       _datePickerRoute,
//   //       arguments: _selectedDate.value.millisecondsSinceEpoch,
//   //     );
//   //   },
//   // );

//   // static Route<DateTime> _datePickerRoute(
//   //   BuildContext context,
//   //   Object? arguments,
//   // ) {
//   //   return DialogRoute<DateTime>(
//   //     context: context,
//   //     builder: (BuildContext context) {
//   //       return DatePickerDialog(
//   //         restorationId: 'date_picker_dialog',
//   //         initialEntryMode: DatePickerEntryMode.calendarOnly,
//   //         initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
//   //         firstDate: DateTime(1940),
//   //         lastDate: DateTime(2022),
//   //       );
//   //     },
//   //   );
//   // }

//   // @override
//   // void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//   //   registerForRestoration(_selectedDate, 'selected_date');
//   //   registerForRestoration(
//   //       _restorableDatePickerRouteFuture, 'date_picker_route_future');
//   // }

//   // void _selectDate(DateTime? newSelectedDate) {
//   //   if (newSelectedDate != null) {
//   //     setState(() {
//   //       _selectedDate.value = newSelectedDate;
//   //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //         content: Text(
//   //             'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
//   //       ));
//   //     });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: [GlobalMaterialLocalizations.delegate],
//       supportedLocales: [const Locale('en'), const Locale('fr')],
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.amber,
//             height: MediaQuery.of(context).size.height / 10,
//             width: MediaQuery.of(context).size.width / 1.5,
//             child: Center(
//               child: TextButton(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.calendar_today),
//                     Container(
//                       width: 5,
//                     ),
//                     Text(_txt),
//                   ],
//                 ),
//                 onPressed: () async {
//                   DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       locale: const Locale("ar", "AR"),
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime(1940),
//                       lastDate: DateTime(2030),
//                       builder: (BuildContext context, Widget? child) {
//                         return Theme(
//                           data: ThemeData.dark(),
//                           child: child!,
//                         );
//                       });
//                   if (pickedDate != null) {
//                     print(
//                         pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
//                     String formattedDate =
//                         DateFormat('yyyy-MM-dd').format(pickedDate);
//                     print(
//                         formattedDate); //formatted date output using intl package =>  2021-03-16
//                     setState(() {
//                       _txt =
//                           formattedDate; //set output date to TextField value.
//                     });
//                   } else {}
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Ships extends StatefulWidget {
  const Ships({super.key});

  @override
  State<Ships> createState() => _ShipsState();
}

class _ShipsState extends State<Ships> {
  String _ttxt = 'اللي جالك';
  bool pressGeoON = false;
  bool cmbscritta = false;

  @override
  Widget build(BuildContext context) {
    // 'انت لسه مبعتش شحنات';
    Color _fColor1 = Colors.transparent;
    Color _sColor1 = Colors.transparent;

    // Color _fColor2 = Colors.white;
    // Color _sColor2 = Colors.grey;

    void clickfunction() {
      // print('object');
      setState(() {
        pressGeoON = !pressGeoON;
        cmbscritta = !cmbscritta;
        // _ttxt = 'ysta';
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Text(
            'Serb-Express',
            style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: HexColor('#63ade1')),
        backgroundColor: HexColor('#63ade1'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: cmbscritta ? HexColor('#63ade1') : Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10)),
                      border: Border.all(color: HexColor('#63ade1'), width: 1)),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: TextButton(
                        onPressed: clickfunction,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.arrow_circle_up,
                                size: 35,
                                color: cmbscritta
                                    ? Colors.white
                                    : HexColor('#63ade1'),
                              ),
                              Text(
                                'اللي شحنته',
                                style: GoogleFonts.cairo(
                                    color: cmbscritta
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: pressGeoON ? Colors.white : HexColor('#63ade1'),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10)),
                      border: Border.all(color: HexColor('#63ade1'), width: 1)),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: TextButton(
                        onPressed: clickfunction,
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.arrow_circle_down,
                              size: 35,
                              color: pressGeoON
                                  ? HexColor('#63ade1')
                                  : Colors.white,
                            ),
                            Text(
                              'اللي جالك',
                              style: GoogleFonts.cairo(
                                  color:
                                      pressGeoON ? Colors.black : Colors.white,
                                  fontSize: 20),
                            ),
                          ],
                        ))),
                  ),
                )
              ],
            ),
            Container(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/serbVan.png',
                    width: 200,
                    height: 200,
                    opacity: AlwaysStoppedAnimation(.5),
                  ),
                  Container(
                    child: Center(
                        child: cmbscritta
                            ? Text(
                                'انت لسه مشحنتش',
                                style: GoogleFonts.cairo(fontSize: 23),
                              )
                            : Text(
                                'مفيش شحنات وصلتلك',
                                style: GoogleFonts.cairo(fontSize: 23),
                              )
                        // style: GoogleFonts.cairo(),

                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
