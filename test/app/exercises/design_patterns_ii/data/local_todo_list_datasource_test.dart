import 'package:flutter_test/flutter_test.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/data/local_todo_list_datasource.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/models/todo_list_model.dart';

void main() {
  test('Testando se não retorna vázio a busca na API', () async {
    final store = LocalTodoListData();
    final result = await store.getTodoList();
    expect(result, isNotEmpty);
  });
  test('Adicionando item a Lista', () async {
    final store = LocalTodoListData();
    store.addTodoList('1', 'Teste', true);
    final result = await store.getTodoList();
    final todoList = result.map(TodoListModel.fromJson).toList();
    print(todoList[1].title);
    expect(result[0], isNotEmpty);
  });
  test('Testando se não retorna vázio a busca na API', () async {
    final store = LocalTodoListData();
    final result = await store.deleteTodoList();
    expect(result, isNotEmpty);
  });
}
