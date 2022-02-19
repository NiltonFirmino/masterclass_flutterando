import 'package:flutter/material.dart';

import 'app/animation/animations_page.dart';
import 'app/animation/explicit_animation/explicit_animation_button_page.dart';
import 'app/animation/explicit_animation/explicit_expasion_lile_page.dart';
import 'app/animation/implicit_animation/implicit_animation_button_page.dart';
import 'app/animation/implicit_animation/implicit_expasion_lile_page.dart';
import 'app/app.dart';
import 'app/mockups/mockup_getyoumonet/getyoumonet_page.dart';
import 'app/mockups/mockup_tinder/tinder_page.dart';
import 'app/mockups/mockups_page.dart';
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
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/': (context) => const AppPage(),
        '/mockup0': (context) => const MockupTinderPage(),
        '/mockup1': (context) => const MockupMyMoneyPage(),
        '/animation1': (context) => const ImplicitExpasionLilePage(),
        '/animation0': (context) => const ImplicitAnimationButtonPage(),
        '/animation3': (context) => const ExplicitExpasionLilePage(),
        '/animation2': (context) => const ExplicitAnimationButtonPage(),
        '/animations': (context) => const AnimationsPage(),
        '/mockups': (context) => const MockupsPage(),
      },
    );
  }
}
