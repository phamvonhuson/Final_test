
import 'package:flutter/material.dart';
import 'package:flutter_project/themes/dark_mode.dart';
import 'package:flutter_project/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightmode;
    
    ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkmode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
  void toggleTheme(){
    if (_themeData == lightmode){
      themeData = darkmode;
    }else {
      themeData = lightmode;
    }
  }
}