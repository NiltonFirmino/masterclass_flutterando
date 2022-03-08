import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const todosList = 'TodoList';

class LocalTodoListData {
  Future<List> getTodoList() async {
    final shared = await SharedPreferences.getInstance();
    final jsonString = shared.getString(todosList);

    return jsonString == null ? '[]' : jsonDecode(jsonString);
  }

  Future<void> saveTodoList(List json) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setString(todosList, jsonEncode(json));
  }
}
