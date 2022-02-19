import 'package:flutter/material.dart';

import '../theme/text_theme.dart';

class MySubCard extends StatefulWidget {
  final String index;
  final String url;
  const MySubCard({
    Key? key,
    required this.index,
    required this.url,
  }) : super(key: key);

  @override
  _MySubCardState createState() => _MySubCardState();
}

class _MySubCardState extends State<MySubCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, widget.url);
      },
      child: Container(
        height: 64,
        decoration: const BoxDecoration(
          color: Color(0xFF172026),
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 33,
                  width: 33,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0xFF055AA3)),
                  child: Center(
                    child: Text(
                      widget.index,
                      style: darktextTheme.headline2,
                    ),
                  )),
              Text(
                "Exercícios 01",
                style: darktextTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
