import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/flutter_playground/api_consumer/store/todo_store.dart';

class ApiHomePage extends StatefulWidget {
  const ApiHomePage({ Key? key }) : super(key: key);

  @override
  State<ApiHomePage> createState() => _ApiHomePageState();
  
  
}

class _ApiHomePageState extends State<ApiHomePage> {
  late Future listModel;

  @override
  void initState() {
    super.initState();
    listModel = TodoStore().getAllTodo();
  }
  @override
  Widget build(BuildContext context) {


    return Container(
      
    );
  }
}