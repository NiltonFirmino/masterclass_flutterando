import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Center(
        child: Builder(builder: (context) {
          Future.delayed(const Duration(seconds: 4)).then((_) {
           Navigator.pushReplacementNamed(context, '/');
          });
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,            
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(
                    'assets/flutterandomasterclasslogo.png',
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),                  
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
