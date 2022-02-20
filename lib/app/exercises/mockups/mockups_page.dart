import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';

import '../../../core/components/subcard_widget.dart';

class MockupsPage extends StatefulWidget {
  const MockupsPage({Key? key}) : super(key: key);

  @override
  _MockupsPageState createState() => _MockupsPageState();
}

class _MockupsPageState extends State<MockupsPage> {
  @override
  Widget build(BuildContext context) {
    List exercises = [
      'Mockup Tinder',
      'Mockup getYouMonet',
    ];

    return Scaffold(
      appBar: myAppBarHome(title: 'Mocups'),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/mockup' + (index).toString();
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
