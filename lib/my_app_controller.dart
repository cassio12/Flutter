import 'package:flutter/cupertino.dart';

class MyAppController extends ChangeNotifier {
  static MyAppController instance = MyAppController();
  
  bool isTroca = false;

  changeTheme() {
    isTroca = !this.isTroca;
    notifyListeners();
 }
}