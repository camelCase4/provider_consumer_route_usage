import 'package:flutter/material.dart';

class MotorSideMirrorProvider extends ChangeNotifier{
  String mirrorName = "Street King";

  String get getMirror => mirrorName;

  set setMirrorName(String mirror_name)
  {
    mirrorName = mirror_name;
    notifyListeners();
  }

}