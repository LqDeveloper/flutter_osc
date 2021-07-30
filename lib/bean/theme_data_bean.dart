import 'package:flutter/material.dart';
import 'package:flutter_osc/utils/osc_colors.dart';

class ThemeDataBean extends ChangeNotifier {
  ThemeData _themeData = ThemeData(primaryColor: OSCColors.green);

  ThemeData get themeData => _themeData;

  void changeTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
