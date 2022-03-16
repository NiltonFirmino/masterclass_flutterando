import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../app/exercises/animation/animations_page.dart';
import '../../app/exercises/animation/explicit_animation/explicit_animation_button_page.dart';
import '../../app/exercises/animation/explicit_animation/explicit_expansion_lile_page.dart';
import '../../app/exercises/animation/implicit_animation/implicit_animation_button_page.dart';
import '../../app/exercises/animation/implicit_animation/implicit_expansion_lile_page.dart';
import '../../app/exercises/design_patterns_I/mvw/cpf_generation_validator/cpf_gen_val_page.dart';
import '../../app/exercises/design_patterns_I/patterns_1_page.dart';
import '../../app/exercises/design_patterns_ii/patterns_2_page.dart';
import '../../app/exercises/design_patterns_ii/views/todo_list_page.dart';
import '../../app/exercises/mockups/mockup_getyoumonet/getyoumonet_page.dart';
import '../../app/exercises/mockups/mockup_tinder/tinder_page.dart';
import '../../app/exercises/mockups/mockups_page.dart';
import '../../app/flutter_playground/bottombar_example/bottombar_page.dart';
import '../../app/flutter_playground/componentize_gesture_example/componentize_gesture_page.dart';
import '../../app/flutter_playground/playground_page.dart';
import '../../app/splash_page/splash_page.dart';

var myRoutes = <String, WidgetBuilder>{
  //splash
  '/splash': (context) => const SplashPage(),

  //Home
  '/': (context) => const AppPage(),

  //Mockups
  '/mockups': (context) => const MockupsPage(),
  '/mockup0': (context) => const MockupTinderPage(),
  '/mockup1': (context) => const MockupMyMoneyPage(),

  //Animations
  '/animations': (context) => const AnimationsPage(),
  '/animation0': (context) => const ImplicitAnimationButtonPage(),
  '/animation1': (context) => const ImplicitExpansionLilePage(),
  '/animation2': (context) => const ExplicitAnimationButtonPage(),
  '/animation3': (context) => const ExplicitExpansionLilePage(),

  //Playground
  '/playground': (context) => const PlaygroundPage(),
  '/playground0': (context) => const MyBottomBarExample(),
  '/playground1': (context) => const ComponentizeGesturePage(),
  

  //Design Patterns I
  '/1patterns': (context) => const DesignPatterns1Page(),
  '/1patterns0': (context) => const CpfGeneratorValidatorPage(),

  //Design Patterns II
  '/2patterns': (context) => const DesignPatterns2Page(),
  '/2patterns0': (context) => const TodoListPage(),
};
