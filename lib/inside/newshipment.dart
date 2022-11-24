import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:serb/inside/newship.dart';
import 'package:serb/inside/overlap.dart';

const List<String> list = <String>['Parcel', 'Document'];
const List<String> list2 = <String>['Domestic', 'Comail', 'International'];
const List<String> list3 = <String>[
  'Cash',
  'Collect Charge',
  'Cash POS',
  'Online'
];
Color _yla = Colors.white;

class Newsh extends StatefulWidget {
  const Newsh({super.key});

  @override
  State<Newsh> createState() => _NewshState();
}

class _NewshState extends State<Newsh> {
  bool isChecked = false;
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    double _width = 300;
    double _heigh = 20;

    String dropDownValue = list.first;
    String _dropdownValue = list2.first;
    String _dropdownValue1 = list3.first;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: Center(
                  child: Text(
            'Shipment Details',
            style: GoogleFonts.cairo(fontSize: 25),
          ))),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              HexColor('#0454ac'),
                              HexColor('#63ade1'),
                            ]),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 50),
                    alignment: Alignment.centerRight,
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                          ),
                          Container(
                            width: _width + 20,
                            height: 50,
                            padding: EdgeInsets.only(bottom: 5, left: 15),
                            decoration: BoxDecoration(
                                color: _yla,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: DropdownButtonFormField<String>(
                                value: dropDownValue,
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                icon: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 30,
                                  ),
                                ),
                                decoration: InputDecoration.collapsed(
                                    hintText: '',
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center),
                                elevation: 0,
                                isDense: true,
                                borderRadius: BorderRadius.zero,
                                // dropdownColor: _yla,
                                // iconEnabledColor: _yla,
                                // iconDisabledColor: _yla,
                                focusColor: _yla,
                                style: GoogleFonts.cairo(color: Colors.black),
                                onChanged: (value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropDownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: _heigh,
                          ),
                          Container(
                            width: _width,
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Center(
                                      child: Text(
                                    'Fragile',
                                    style: GoogleFonts.cairo(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Checkbox(
                                  checkColor: HexColor('#0454ac'),
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: _heigh,
                          ),
                          Container(
                            width: _width + 20,
                            height: 50,
                            padding: EdgeInsets.only(bottom: 5, left: 15),
                            decoration: BoxDecoration(
                                color: _yla,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: DropdownButtonFormField<String>(
                                value: _dropdownValue,
                                items: list2.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                icon: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.arrow_drop_down_rounded,
                                      size: 30),
                                ),
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                style: GoogleFonts.cairo(color: Colors.black),
                                onChanged: (value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropDownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: _heigh,
                          ),
                          Container(
                            width: _width + 20,
                            height: 50,
                            padding: EdgeInsets.only(bottom: 5, left: 15),
                            decoration: BoxDecoration(
                                color: _yla,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: DropdownButtonFormField<String>(
                                value: _dropdownValue1,
                                items: list3.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                icon: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.arrow_drop_down_rounded,
                                      size: 30),
                                ),
                                style: GoogleFonts.cairo(color: Colors.black),
                                onChanged: (value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropDownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: _heigh,
                          ),
                          Container(
                            width: _width,
                            height: 60,
                            padding: EdgeInsets.only(bottom: 20, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Center(
                                      child: Text(
                                    'VIP',
                                    style: GoogleFonts.cairo(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                Checkbox(
                                  checkColor: HexColor('#63ade1'),
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: ischecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      ischecked = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: _heigh,
                          // ),
                          // Container(
                          //   width: _width,
                          //   height: 60,
                          //   child: TextFormField(
                          //     textAlign: TextAlign.right,
                          //     cursorColor: HexColor('101820'),
                          //     //     controller: _cont,
                          //     style: GoogleFonts.cairo(),
                          //     textDirection: TextDirection.rtl,
                          //     decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(left: 9, right: 7),
                          //       floatingLabelBehavior: FloatingLabelBehavior.auto,
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(9),
                          //       ),
                          //       //     alignLabelWithHint: true,
                          //       hintTextDirection: TextDirection.rtl,
                          //       floatingLabelAlignment:
                          //           FloatingLabelAlignment.center,
                          //       labelText: ' الاسم الأخير',
                          //       labelStyle: TextStyle(),
                          //       //alignLabelWithHint: true,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      HexColor('#0454ac'),
                      HexColor('#63ade1'),
                    ]),
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePages(title: 'serb')//MyApp1()
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
