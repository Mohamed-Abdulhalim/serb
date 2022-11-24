import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:serb/inside/newshipment.dart';
import '../drawer/shippnum.dart';

class MyAcc extends StatefulWidget {
  const MyAcc({super.key});

  @override
  State<MyAcc> createState() => _MyAccState();
}

class _MyAccState extends State<MyAcc> {
  double _wid = 60;
  double _heit = 80;
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      GoogleFonts.cairo(fontSize: 12, color: HexColor('#525252'));
  static TextStyle optionStyle2 =
      GoogleFonts.cairo(fontSize: 11, color: HexColor('#525252'));
  static List<Widget> _widgetOptions = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.file_copy_outlined,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'الفواتير',
                    style: optionStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.insert_drive_file_rounded,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'التقارير',
                    style: optionStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_balance_wallet_rounded,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'حركات الرصيد',
                    style: optionStyle2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mobile_friendly_outlined,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'تغيير رقم الموبايل',
                    style: optionStyle2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: HexColor('#525252')),
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_location_alt_outlined,
                              size: 30, color: HexColor('#525252'))),
                    ),
                    Text(
                      'عناويني',
                      style: optionStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.card_giftcard_rounded,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'تفعيل قسيمة',
                    style: optionStyle2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.credit_score_rounded,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'حساب الحوالات البنكية',
                    style: optionStyle2,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.credit_card,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'فترة التحويل البنكي',
                    style: optionStyle2,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: HexColor('#525252')),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.logout_rounded,
                            size: 30, color: HexColor('#525252'))),
                  ),
                  Text(
                    'تسجيل الخروج',
                    style: optionStyle2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
        Row(),
        Row()
      ],
    ),
    Text(
      'لا توجد إشعارات حاليا',
      style: GoogleFonts.cairo(fontSize: 15, color: HexColor('#525252')),
    ),
    Text(
      'لا توجد شحنات حاليا',
      style: GoogleFonts.cairo(fontSize: 15, color: HexColor('#525252')),
    ),
    Container(
        child: Newsh()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _hei = 60;
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
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor('eaeef1'),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        selectedFontSize: 12.0,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.cairo(),
        unselectedLabelStyle: GoogleFonts.cairo(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'إشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Boxicons.bxs_package,
            ),
            label: 'شحناتي',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_shipping_rounded,
            ),
            label: 'طلب جديد',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor('#0a7dcf'),
        selectedIconTheme: IconThemeData(color: HexColor('#0a7dcf')),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey, size: 30),
        elevation: 1,
        backgroundColor: HexColor(
          'eaeef1',
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'lib/assets/serlogo.png',
            width: 80,
            height: 50,
            fit: BoxFit.fitWidth,
          ),
        ),
        leadingWidth: 100,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
