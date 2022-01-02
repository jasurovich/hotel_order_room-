import 'package:flutter/material.dart';

class FilterSwitchProvider extends ChangeNotifier {
  bool breafastInclude = false;
  bool deals = true;
  bool available = true;

  changeBreakfast(bool option) {
    breafastInclude = option;
    
    notifyListeners();
  }
  changeDeal(bool option) {
    deals = option;  
    notifyListeners();
  }
  changeAvailable(bool option) {
    available = option;  
    notifyListeners();
  }
}
