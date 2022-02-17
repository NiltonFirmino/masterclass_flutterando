import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/appbar.dart';
import 'package:mockups_masterclass/core/components/card.dart';

import '../core/components/body_home_page.dart';
import '../core/components/bottombar.dart';
import 'repositories/repositories_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    BodyHomePage(),
    RepositoriesPage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: myAppBar()),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: MyBottomBar(
      ),
      
    );
  }
}
