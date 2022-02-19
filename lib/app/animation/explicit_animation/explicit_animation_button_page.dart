import 'package:flutter/material.dart';

class ExplicitAnimationButtonPage extends StatefulWidget {
  const ExplicitAnimationButtonPage({Key? key}) : super(key: key);

  @override
  _ExplicitAnimationButtonPageState createState() =>
      _ExplicitAnimationButtonPageState();
}

class _ExplicitAnimationButtonPageState
    extends State<ExplicitAnimationButtonPage> with TickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Size?> sizeAnimation;
  late Animation<Alignment?> alignAnimation;
  late Animation<BorderRadius?> borderRadiusAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    sizeAnimation =
        SizeTween(begin: const Size(50, 50), end: const Size(150, 50))
            .animate(_controller);
    alignAnimation =
        AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(_controller);
    borderRadiusAnimation = BorderRadiusTween(
            begin: BorderRadius.circular(25), end: BorderRadius.circular(0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Botão Flutuante Controlada'),
      ),
      body: GestureDetector(
        onTap: () {
          if (_controller.value == 0) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx, child) {
            return Align(
              alignment: alignAnimation.value!,
              child: Container(
                margin: const EdgeInsets.all(20),
                width: sizeAnimation.value?.width,
                height: sizeAnimation.value?.height,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: borderRadiusAnimation.value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
