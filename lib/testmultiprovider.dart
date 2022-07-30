import 'package:flutter/material.dart';

class multiprovider with ChangeNotifier{
  double value=1.0;
  double get state =>value;
  void getdoublevalue(double _val)
  {
value=_val;
    notifyListeners();
  }
}