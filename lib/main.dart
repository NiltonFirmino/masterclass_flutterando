import 'package:flutter/material.dart';

import 'app/animation/explicit_animation/explicit_animation_button_page.dart';
import 'app/animation/explicit_animation/explicit_expasion_lile_page.dart';
import 'app/animation/implicit_animation/implicit_animation_button_page.dart';
import 'app/animation/implicit_animation/implicit_expasion_lile_page.dart';
import 'app/app.dart';

import 'app/home/home_page.dart';
import 'app/mockups/mockup_getyoumonet/getyoumonet_page.dart';
import 'app/mockups/mockup_tinder/tinder_page.dart';
import 'app/repositories/repositories_page.dart';
import 'app/splash/splash_page.dart';
import 'core/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masterclass Fluterando',
      theme: darkTheme,
      initialRoute: '/app',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/': (context) => const HomePage(),
        '/mockuptinder': (context) => const TinderPage(),
        '/mockupmoney': (context) => const MoneyScreenPage(),
        '/implicitlile': (context) => const ImplicitExpasionLilePage(),
        '/implicitbutton': (context) => const ImplicitAnimationButtonPage(),
        '/explicitlile': (context) => const ExplicitExpasionLilePage(),
        '/explicitbutton': (context) => const ExplicitAnimationButtonPage(),
        '/app': (context) => const AppPage(),
      },
    );
  }
}
