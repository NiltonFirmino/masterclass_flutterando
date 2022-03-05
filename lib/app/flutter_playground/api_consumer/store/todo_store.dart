import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../model/todo_model.dart';
import '../services/todo_service.dart';

class TodoStore extends ChangeNotifier {
  //controller State
  final todoService = TodoService();

  List<TodoModel> _todos = [];
  List<TodoModel> get todos => _todos;

  Future<void> getAllTodo() async {
    _todos = await todoService.getTodos();
    notifyListeners();
  }
}
