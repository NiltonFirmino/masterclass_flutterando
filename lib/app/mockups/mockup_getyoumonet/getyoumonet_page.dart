import 'package:flutter/material.dart';

class MockupMyMoneyPage extends StatelessWidget {
  const MockupMyMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double sizeLogo = MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: SizedBox(
              width: sizeLogo,
              height: sizeLogo,
              child: Stack(
                children: [
                  Container(
                    height: sizeLogo * 0.4,
                    width: sizeLogo * 0.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5e5ce5),
                      borderRadius:
                          BorderRadius.all(Radius.circular(sizeLogo * 0.2)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sizeLogo * 0.5),
                    child: Container(
                      height: sizeLogo * 0.4,
                      width: sizeLogo * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5e5ce5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(sizeLogo * 0.4),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizeLogo * 0.5),
                    child: Container(
                      height: sizeLogo * 0.9,
                      width: sizeLogo * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5e5ce5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(sizeLogo * 0.4),
                          topRight: Radius.circular(sizeLogo * 0.4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: size * 0.8,
              child: const Text(
                'Get your Money Under Control',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              width: size * 0.8,
              child: const Text(
                'Manage your expenses Seamlessly.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: 50,
              width: size * 0.9,
              decoration: const BoxDecoration(
                  color: Color(0xFF5e5ce5),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size * 0.8,
                    child: const Text(
                      'Sign Up With Email ID',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 50,
              width: size * 0.9,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 40,
                      height: 25,
                      child: Image(
                        image: Image.asset(
                                'lib/app/mockups/mockup_getyoumonet/assets/google_logo.png')
                            .image,
                      )),
                  const Center(
                    child: Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: SizedBox(
              width: size * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: Color.fromARGB(255, 158, 158, 158),
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 158, 158, 158),
                            decorationStyle: TextDecorationStyle.wavy,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
