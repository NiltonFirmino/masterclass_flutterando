import 'package:flutter/material.dart';

import '../../../core/theme/text_theme.dart';
import 'componentize_gesture_store.dart';
import 'gesture_component.dart';

class ComponentizeGesturePage extends StatefulWidget {
  const ComponentizeGesturePage({Key? key}) : super(key: key);

  @override
  State<ComponentizeGesturePage> createState() =>
      _ComponentizeGesturePageState();
}

class _ComponentizeGesturePageState extends State<ComponentizeGesturePage> {
  final ComponentizeGestureStore controller = ComponentizeGestureStore();
  final MyGesture myGesture = MyGesture();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int value = controller.value;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: darkTextTheme.headline1,
            ),
            
            myGesture.myGestureDetector(controller.increment),
          ],
        ),
      ),
    );
  }
}
