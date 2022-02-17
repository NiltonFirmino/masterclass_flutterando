import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/home_page.dart';
import '../../app/repositories/repositories_page.dart';
import '../theme/text_theme.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
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
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );

    /* BottomAppBar(
    child: Container(
      height: 124,
      width: double.infinity,
      color:const Color(0xFF121517),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    children: [
                      IconButton(
                        alignment: Alignment.bottomCenter,
                        icon: SizedBox(
                          width: 24,
                          height: 24,
                          child: Center(
                            child: SvgPicture.asset(
                                'assets/icon/feathertarget.svg'),
                          ),
                        ),
                        tooltip: "Atividades",
                        onPressed: () {},
                      ),
                      Text(
                        "Atividades",
                        style: darktextTheme.headline3,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: const Color(0xffEDF4F8),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    children: [
                      IconButton(
                        alignment: Alignment.bottomCenter,
                        icon: SizedBox(
                          width: 24,
                          height: 24,
                          child: Center(
                            child: SvgPicture.asset(
                                'assets/icon/awesomegithub.svg'),
                          ),
                        ),
                        tooltip: "Repositorie",
                        onPressed: () {
                        
                          
                        },
                      ),
                      Text(
                        "Repositórios",
                        style: darktextTheme.headline3,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: const Color(0xffEDF4F8),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    children: [
                      IconButton(
                        alignment: Alignment.bottomCenter,
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xffEDF4F8),
                          size: 24,
                        ),
                        tooltip: "Profile",
                        onPressed: () {},
                      ),
                      Text(
                        "Sobre o dev",
                        style: darktextTheme.headline3,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    
  );*/
  }
}
