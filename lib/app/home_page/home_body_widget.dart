import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/card_widget.dart';

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
          title: 'Playground - Flutter',
          content: 'Ambiente destinado a testes e estudos em geral, contendo exemplos de widgets e layouts',
          image: 'materialtoys',
          qtoExercises: '2',
          url: '/playground',
        ),
         MyCard(
          title: 'Design Patterns I',
          content: 'Aplicação de técnica de Design Patterns MVW, contendo 1 exercícios',
          image: 'patterns1',
          qtoExercises: '1',
          url: '/1patterns',
        ),
         MyCard(
          title: 'Design Patterns II',
          content: 'Aplicação de técnica de Design Patterns II, Prototype, Service e Repository contendo 1 exercícios',
          image: 'patterns2',
          qtoExercises: '1',
          url: '/2patterns',
        ),
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
