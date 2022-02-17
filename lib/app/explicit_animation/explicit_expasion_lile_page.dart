import 'dart:math';
import 'package:flutter/material.dart';

class ExplicitExpasionLilePage extends StatefulWidget {
  const ExplicitExpasionLilePage({Key? key}) : super(key: key);

  @override
  _ExplicitExpasionLilePageState createState() =>
      _ExplicitExpasionLilePageState();
}

class Data {
  final String title;
  final FlutterLogo logo;
  final String content;
  final AnimationController controller;
  final Animation<double?> heightFactorAnimation;
  final Animation<double?> radiansAnimation;

  Data({
    required this.title,
    required this.logo,
    required this.content,
    required this.controller,
    required this.heightFactorAnimation,
    required this.radiansAnimation,
  });
}

class _ExplicitExpasionLilePageState extends State<ExplicitExpasionLilePage>
    with TickerProviderStateMixin {
  List<Data> data = [];
  @override
  void initState() {
  
    super.initState();

    data.addAll(
      List.generate(
        30,
        (index) {
          final animationController = AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 500),
          );
          return Data(
            title: 'My expansion tile $index',
            logo: const FlutterLogo(size: 40),
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel condimentum eros. Sed non ligula rhoncus, eleifend ante non, congue urna. Sed sed nisi vitae mi ullamcorper interdum. Pellentesque scelerisque ornare justo ac dictum. Fusce molestie erat id rhoncus consectetur. Nullam eu fermentum odio. Aliquam tristique Sed ultrices, ipsum id fermentum cursus, leo eros im',
            controller: animationController,
            heightFactorAnimation: Tween(begin: 0.0, end: 1.0).animate(
              animationController,
            ),
            radiansAnimation: Tween(begin: 0.0, end: pi).animate(
              animationController,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, index) {
          return AnimatedBuilder(
            animation: data[index].controller,
            builder: (ctx, child) {
              return Column(
                children: [
                  ListTile(
                    leading: Text(data[index].title),
                    trailing: Transform.rotate(
                      angle: data[index].radiansAnimation.value!,
                      child: const Icon(Icons.arrow_drop_down),
                    ),
                    onTap: () {
                      setState(() {
                        // listIsTap[index] = !listIsTap[index];
                        if (data[index].controller.value == 0) {
                          data[index].controller.forward();
                        } else {
                          data[index].controller.reverse();
                        }
                      });
                    },
                  ),
                  ClipRect(
                    child: Align(
                      heightFactor: data[index].heightFactorAnimation.value,
                      child: Column(children: [
                        data[index].logo,
                        Text(
                          data[index].content,
                          textAlign: TextAlign.justify,
                        ),
                      ]),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (var element in data) {
      element.controller.dispose();
    }
  }
}
