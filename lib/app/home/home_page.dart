import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MyCard(
          title: 'Animações',
          content: 'Estudos sobre animações implícitas e controlada, contendo 4 exercícios e 2 estudos',
          image: 'awesomerunning',
          qtoExercises: '4',
          url: '/animations',
        ),
        MyCard(
          title: 'Leitura de Mockup',
          content: 'Aplicação da técnica de leitura de mockup contendo 2 exercícios',
          image: 'awesomeglasses',
          qtoExercises: '2',
          url: '/mockups',
        ),
      ],
    );
  }
}
