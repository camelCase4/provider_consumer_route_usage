import 'package:flutter/material.dart';

class CounterPageTest extends ChangeNotifier{
  int count = 0;

  int get currentCount => count;

  void countPlus()
  {
    count++;
    notifyListeners();
  }

}