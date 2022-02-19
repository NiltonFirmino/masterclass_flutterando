import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_home.dart';

import '../../core/components/subcard.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarHome(title: 'Animaçoes'),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/animation' + (index).toString();
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
