import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';

import '../../../core/components/subcard_widget.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {

  @override
  Widget build(BuildContext context) {
  List exercises = [
    'Animação Botão Flutuante - Implícita',
    'Animação MyScrollView - Implícita',
    'Animação Botão Flutuante - Controlada',
    'Animação MyScrollView - Controlada',
  ];
    return Scaffold(
      appBar: myAppBarHome(title: 'Animaçoes'),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/animation' + (index).toString();
          return ListTile(
            title: MySubCard(
              index: '$indice',
              url: url,
              title: exercises[index],
            ),
          );
        },
      ),
    );
  }
}
