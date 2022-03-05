import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/text_theme.dart';

class MyCard extends StatefulWidget {
  final String title;
  final String content;
  final String image;
  final String qtoExercises;
  final String url;

  const MyCard({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
    required this.qtoExercises,
    required this.url,
  }) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    String img = widget.image;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        decoration: const BoxDecoration(
          color: Color(0xFF172026),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 43,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 43,
                        width: 43,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color(0xFF055AA3)),
                        child: Center(
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: SvgPicture.asset('assets/icon/$img.svg')),
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          widget.title,
                          style: darkTextTheme.headline5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 43,
                      child: Row(
                        children: [
                          Center(
                              child: Text(
                            'Exercícios',
                            style: darkTextTheme.headline4,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 2),
                            child: Center(
                                child: Text(
                              widget.qtoExercises,
                              style: darkTextTheme.headline3,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        widget.content,
                        style: darkTextTheme.headline4,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, widget.url);
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child:
                              SvgPicture.asset('assets/icon/awesomegithub.svg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Acessar código fonte',
                          style: darkTextTheme.headline3,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        height: 35,
                        width: 120,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color(0xFF055AA3)),
                        child: Center(
                          child: Text(
                            'Ver mais',
                            style: darkTextTheme.headline3,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
