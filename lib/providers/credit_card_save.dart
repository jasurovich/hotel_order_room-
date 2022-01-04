import 'package:flutter/material.dart';

class CreditCardSave extends ChangeNotifier {
  bool isSaved = false;

  changeValue() {
    isSaved = !isSaved;
    notifyListeners();
  }
}
