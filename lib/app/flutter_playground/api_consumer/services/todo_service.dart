import 'dart:convert';

import 'package:dio/dio.dart';

import '../mockup/todo_mockup.dart';
import '../model/todo_model.dart';

class TodoService {
  final dio = Dio();
  Future getTodos() async {
    final response = /*jsonDecode(todoMockup);*/
        await dio.get('https://jsonplaceholder.typicode.com/todos',);
       
    final list = response.data as List;
    
    final todos = list
        .map((e) => TodoModel(
              e['title'],
              e['completed'],
            ))
        .toList();
    
    return todos;
  }
}
