import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/text_theme.dart';

AppBar myAppBar() {
  return AppBar(
    elevation: 0,
    title:  SizedBox(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Atividades', style: darktextTheme.headline1),
          Text('Flutterando Masterclass', style: darktextTheme.headline3),
        ],
      ),
    ),
    backgroundColor:const Color.fromARGB(68, 7, 7, 7),
    leading: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Image.asset('assets/logomasterclass.png'),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icon/awesomemoon.svg'),
        onPressed: () {},
      ),
      
    ],
  );
}
