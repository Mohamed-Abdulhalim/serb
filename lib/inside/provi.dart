import 'package:flutter/foundation.dart';
import 'package:serb/inside/homePage.dart';
import 'homePage.dart';

class AP with ChangeNotifier {
  String _value = 'John Doe';
  void _change() {
    MyHomePages(title: _value).alue = _value;
    notifyListeners();
  }
}
