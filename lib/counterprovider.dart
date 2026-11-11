import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier{
  int count = 1;

  void increaseCounter(){
    count++;
    notifyListeners();
  }

  void decreaseCounter(){
    count--;
    notifyListeners();
  }

  void resetcount(){
    count = 0;
    notifyListeners();
  }
}