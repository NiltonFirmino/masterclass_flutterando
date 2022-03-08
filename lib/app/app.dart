import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mockups_masterclass/app/home_page/home_body_widget.dart';
import 'package:mockups_masterclass/app/profile_page/profile_page.dart';
import 'package:mockups_masterclass/app/repositories_page/view/repositories_page.dart';

import '../core/components/appbar_widget.dart';
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
    ),
    myAppBarHome(
      isLeading: true,
      title: 'Repositórios',
    ),
    myAppBarHome(
      isLeading: true,
      title: 'Sobre o dev',
    ),
  ];

  static const List<Widget> _widgetBodyOptions = <Widget>[
    HomePage(),
    RepositoriesPage(),
    ProfilePage(),
    
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
        body: _widgetBodyOptions.elementAt(_selectedBody),
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
                              style: darkTextTheme.headline3,
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
                              tooltip: "Repositories",
                              onPressed: () {
                                onItemTapped(1);
                              },
                            ),
                            Text(
                              "Repositórios",
                              style: darkTextTheme.headline3,
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
                              style: darkTextTheme.headline3,
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
        ));
  }
}
