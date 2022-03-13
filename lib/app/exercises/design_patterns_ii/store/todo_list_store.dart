import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/models/todo_list_model.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/repositories/todo_list_repositories.dart';

class TodoListStore extends ChangeNotifier{

  final todoListRepository = TodoListRepository();

  List<TodoListModel> todoList = [];

   Future<List<TodoListModel>> displayAllTodoList() async{
    todoList  = await todoListRepository.getAllTodoList();
    notifyListeners();
    return todoList;
  }

}