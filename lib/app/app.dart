import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mockups_masterclass/app/home/home_page.dart';

import '../core/components/appbar_home.dart';
import '../core/theme/text_theme.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _selectedAppbar = 0;
  int _selectedBody = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final List<AppBar> _widgetAppbarOptions = <AppBar>[
    myAppBarHome(
      isLeading: true,
      title: 'Atividades',
      subtitle: 'Flutterando Masterclass',
      theme: 'awesomemoon',
    ),
    myAppBarHome(
      isLeading: true,
      title: 'Repositórios',
      subtitle: 'Flutterando Masterclass',
      theme: 'awesomemoon',
    ),
    myAppBarHome(
      isLeading: true,
      title: 'Sobre o dev',
      subtitle: 'Flutterando Masterclass',
      theme: 'awesomemoon',
    ),
  ];

  static const List<Widget> _widgetBodyOptions = <Widget>[
    HomePage(),
    Text(
      '',
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedAppbar = index;
      _selectedBody = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _widgetAppbarOptions.elementAt(_selectedAppbar),
        body: Center(
          child: _widgetBodyOptions.elementAt(_selectedBody),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 124,
            width: double.infinity,
            color: const Color(0xFF121517),
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
                              onPressed: () {
                                onItemTapped(0);
                              },
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
                                onItemTapped(1);
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
                              onPressed: () {
                                onItemTapped(2);
                              },
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
        )

        /* BottomNavigationBar(
        backgroundColor: Color(0xFF121517),
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: SvgPicture.asset('assets/icon/feathertarget.svg'),
              ),
            ),
            label: 'Atividades',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: SvgPicture.asset('assets/icon/awesomegithub.svg'),
              ),
            ),
            label: 'Repositórios',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xffEDF4F8),
              size: 24,
            ),
            label: 'Sobre o dev',
          ),
        ],
        currentIndex: _selectedBody,
        unselectedItemColor: const Color(0xffEDF4F8),
        selectedItemColor: const Color(0xffEDF4F8),
        onTap: _onItemTapped,
      ),*/

        );
  }
}
