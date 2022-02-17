import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/text_theme.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              child: SvgPicture.asset(
                                  'assets/icon/awesomerunning.svg')),
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Aqui Título',
                          style: darktextTheme.headline5,
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
                            style: darktextTheme.headline4,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 2),
                            child: Center(
                                child: Text(
                              'X',
                              style: darktextTheme.headline3,
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
                        'Aqui vai o conteúdo do card',
                        style: darktextTheme.headline4,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 43,
                child: Row(
                  children: [
                     SizedBox(
                      width: 20,
                      height: 20,
                      child: Center(
                        child: SvgPicture.asset(
                                  'assets/icon/awesomegithub.svg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Acessar código fonte',
                        style: darktextTheme.headline3,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(height: 35,
                        width: 120,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color(0xFF055AA3)),
                        child: Center(child: Text(
                        'Ver mais',
                        style: darktextTheme.headline3,
                      ),),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
