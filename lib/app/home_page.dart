import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar.dart';
import 'package:mockups_masterclass/core/components/card.dart';

import '../core/components/bottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: myAppBar()),
      body: ListView(
        children: const [
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),     
        ],
      ),
      bottomNavigationBar: myBottomBar(
      ),
    );
  }
}
