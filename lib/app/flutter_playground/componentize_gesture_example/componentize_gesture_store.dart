import 'package:flutter/material.dart';

class ComponentizeGestureStore extends ChangeNotifier {
  
  int value = 0;

  increment() {
    value++;
    notifyListeners();
    return value;
  }
}
