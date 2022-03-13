import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_widget.dart';
import 'package:mockups_masterclass/core/components/subcard_widget.dart';



class DesignPatterns2Page extends StatefulWidget {
  const DesignPatterns2Page({Key? key}) : super(key: key);

  @override
  _DesignPatterns2PageState createState() => _DesignPatterns2PageState();
}

class _DesignPatterns2PageState extends State<DesignPatterns2Page> {
  @override
  Widget build(BuildContext context) {
    List exercises = [
      'Todo List com Dartion',      
    ];

    return Scaffold(
      appBar: myAppBarHome(title: 'Design Patterns II'),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          int indice = index + 1;
          String url = '/2patterns' + (index).toString();
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
