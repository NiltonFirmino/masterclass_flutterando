import 'package:flutter_test/flutter_test.dart';

import 'package:mockups_masterclass/app/flutter_playground/api_consumer/store/todo_store.dart';

Future<void> main() async {
  final store = TodoStore();

  await store.getAllTodo();
  print(store.todos.isNotEmpty);
  print(store.todos[1].title);
}
