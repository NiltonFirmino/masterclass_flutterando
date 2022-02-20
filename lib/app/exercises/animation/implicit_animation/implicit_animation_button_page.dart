import 'package:flutter/material.dart';

class ImplicitAnimationButtonPage extends StatefulWidget {
  const ImplicitAnimationButtonPage({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationButtonPageState createState() =>
      _ImplicitAnimationButtonPageState();
}

class _ImplicitAnimationButtonPageState
    extends State<ImplicitAnimationButtonPage> {
  var isTap = true;
  final duration = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Botão Flutuante - Implícita'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            isTap = !isTap;
          });
        },
        child: AnimatedAlign(
          duration: Duration(seconds: duration),
          alignment: isTap ? Alignment.bottomRight : Alignment.topCenter,
          child: AnimatedContainer(
            duration: Duration(seconds: duration),
            margin: const EdgeInsets.all(20),
            width: isTap ? 50 : 150,
            height:50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: isTap ? BorderRadius.circular(25) : null,
            ),
          ),
        ),
      ),
    );
  }
}
