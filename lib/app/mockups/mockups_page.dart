import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_home.dart';

import '../../core/components/subcard.dart';
class MockupsPage extends StatefulWidget {
  const MockupsPage({Key? key}) : super(key: key);

  @override
  _MockupsPageState createState() => _MockupsPageState();
}

class _MockupsPageState extends State<MockupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarHome(title: 'Mocups'),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/mockup' + (index).toString();
          return ListTile(
            title: MySubCard(
              index: "$indice",
              url: url,
            ),
          );
        },
      ),
    );
  }
}
