import 'package:flutter/material.dart';

class BottomBarProvider extends ChangeNotifier {
  int index = 0;

  changeIndex(int i) {
    index = i;
    print(index);
    notifyListeners();
  }
}
