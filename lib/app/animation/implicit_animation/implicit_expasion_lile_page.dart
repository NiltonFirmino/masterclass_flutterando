import 'package:flutter/material.dart';

class ImplicitExpasionLilePage extends StatefulWidget {
  const ImplicitExpasionLilePage({Key? key}) : super(key: key);

  @override
  _ImplicitExpasionLilePageState createState() =>
      _ImplicitExpasionLilePageState();
}

class Data {
  final String title;
  final FlutterLogo logo;
  final String content;
  bool isTap;

  Data(
      {required this.title,
      required this.logo,
      required this.content,
      required this.isTap});
}

class _ImplicitExpasionLilePageState extends State<ImplicitExpasionLilePage> {
  final List<Data> data = List.generate(
      50,
      (index) => Data(
            title: 'My expansion tile $index',
            logo: const FlutterLogo(size: 40),
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel condimentum eros. Sed non ligula rhoncus, eleifend ante non, congue urna. Sed sed nisi vitae mi ullamcorper interdum. Pellentesque scelerisque ornare justo ac dictum. Fusce molestie erat id rhoncus consectetur. Nullam eu fermentum odio. Aliquam tristique gravida diam, at congue turpis. Etiam eleifend fermentum dictum. Sed ultrices, ipsum id fermentum cursus, leo eros im',
            isTap: false,
          ));

  final duration = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              ListTile(
                leading: Text(data[index].title),
                trailing: AnimatedRotation(
                  turns: data[index].isTap ? 0.5 : 0,
                  duration: Duration(milliseconds: duration),
                  child: const Icon(Icons.arrow_drop_down),
                ),
                horizontalTitleGap: 0.0,
                onTap: () {
                  setState(() {
                    data[index].isTap = !data[index].isTap;
                  });
                },
              ),
              AnimatedAlign(
                heightFactor: data[index].isTap ? 1 : 0,
                alignment: Alignment.center,
                duration: Duration(milliseconds: duration),
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: duration),
                  opacity: data[index].isTap ? 1 : 0,
                  child: Column(children: [
                    data[index].logo,
                    Text(
                      data[index].content.toString(),
                      textAlign: TextAlign.justify,
                    ),
                  ]),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
