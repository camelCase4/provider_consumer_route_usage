import 'package:flutter/material.dart';

class MotorSeatProvider extends ChangeNotifier{
  String seatBrand = 'Nathong flat seat';

  String get getBrand => seatBrand;

  set setBrand(String newSeat)
  {
    seatBrand = newSeat;
    notifyListeners();
  }
}