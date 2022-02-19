import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar_home.dart';
import 'package:mockups_masterclass/core/components/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
      ],
    );
  }
}
