import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/exercises/animation/explicit_animation/explicit_expasion_lile_page.dart';
import 'package:mockups_masterclass/app/exercises/animation/implicit_animation/implicit_animation_button_page.dart';
import 'package:mockups_masterclass/app/exercises/animation/implicit_animation/implicit_expasion_lile_page.dart';
import 'app/app.dart';
import 'app/exercises/animation/animations_page.dart';
import 'app/exercises/animation/explicit_animation/explicit_animation_button_page.dart';
import 'app/exercises/mockups/mockup_getyoumonet/getyoumonet_page.dart';
import 'app/exercises/mockups/mockup_tinder/tinder_page.dart';
import 'app/exercises/mockups/mockups_page.dart';
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
        '/mockups': (context) => const MockupsPage(),
        '/mockup0': (context) => const MockupTinderPage(),
        '/mockup1': (context) => const MockupMyMoneyPage(),
        '/animations': (context) => const AnimationsPage(),
        '/animation0': (context) => const ImplicitAnimationButtonPage(),
        '/animation1': (context) => const ImplicitExpasionLilePage(),
        '/animation2': (context) => const ExplicitAnimationButtonPage(),
        '/animation3': (context) => const ExplicitExpasionLilePage(),
      },
    );
  }
}
