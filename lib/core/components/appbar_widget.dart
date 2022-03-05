import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/text_theme.dart';

AppBar myAppBarHome(
    {required String title,
    final String subtitle = 'Flutterando Masterclass',
    final bool isLeading = false,
    final String theme = 'awesomemoon'}) {
  return AppBar(
    elevation: 0,
    title: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: darkTextTheme.headline1),
          Text(subtitle, style: darkTextTheme.headline3),
        ],
      ),
    ),
    backgroundColor: const Color.fromARGB(68, 7, 7, 7),
    leading: isLeading == true
        ? Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/logomasterclass.png'),
          )
        : null,
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icon/$theme.svg'),
        onPressed: () {},
      ),
    ],
  );
}
