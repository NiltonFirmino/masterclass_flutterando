import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';
import 'package:mockups_masterclass/core/components/subcard_widget.dart';



class DesignPatterns1Page extends StatefulWidget {
  const DesignPatterns1Page({Key? key}) : super(key: key);

  @override
  _DesignPatterns1PageState createState() => _DesignPatterns1PageState();
}

class _DesignPatterns1PageState extends State<DesignPatterns1Page> {
  @override
  Widget build(BuildContext context) {
    List exercises = [
      'Gerador/Validador de CPF',      
    ];

    return Scaffold(
      appBar: myAppBarHome(title: 'Design Patterns I'),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/1patterns' + (index).toString();
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
