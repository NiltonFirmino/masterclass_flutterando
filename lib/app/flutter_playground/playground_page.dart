import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';

import '../../../core/components/subcard_widget.dart';

class PlaygroundPage extends StatefulWidget {
  const PlaygroundPage({Key? key}) : super(key: key);

  @override
  _PlaygroundPageState createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage> {
  @override
  Widget build(BuildContext context) {
    List exercises = [
      'Exemplo Simples BottomBAr',
      'Componentizando gestureDetector',
    ];

    return Scaffold(
      appBar: myAppBarHome(title: 'Playground'),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/playground' + (index).toString();
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
