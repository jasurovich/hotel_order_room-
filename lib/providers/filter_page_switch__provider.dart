import 'package:flutter/material.dart';

class FilterSwitchProvider extends ChangeNotifier {
  bool breafastInclude = false;
  bool deals = true;
  bool available = true;

  changeBreakfast(bool option) {
    breafastInclude = option;
    print(breafastInclude);  
    
    notifyListeners();
  }
  changeDeal(bool option) {
    deals = option;  
    print(deals);
    notifyListeners();
  }
  changeAvailable(bool option) {
    available = option;  
    print(available);
    notifyListeners();
  }
}
