import 'dart:async';

import 'package:flutter/material.dart';

class MyGesture {
  

  // final myOnTapDown = <void Function()>[];

  Timer? _timer;

  GestureDetector myGestureDetector(Function function) {
    return GestureDetector(
      onTapDown: (details) {
        //myOnTapDown.add(function);
        _timer = Timer.periodic( const Duration(milliseconds:200), (timer) {
        //  myOnTapDown[0]();
        function();
        });
      },

      onTapUp: (details) {
        _timer?.cancel();
        // myOnTapDown.clear();
      },

      onTapCancel: () {
        _timer?.cancel();
        // myOnTapDown.clear();
      },

      child: Container(
        color: Colors.blue,
        width: 200,
        height: 100,
        child: const Center(
          child: Text('OnTapDown'),
        ),
      ),
    );
  }
}
