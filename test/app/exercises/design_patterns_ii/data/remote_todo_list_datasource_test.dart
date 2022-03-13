import 'package:flutter_test/flutter_test.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/data/remote_todo_list_datasource.dart';

void main() {
  test('Testando se não retorna vázio a busca na API', () async {
    final store = RemoteTodoListData();
    final result = await store.getTodoList();
    expect(result, isNotEmpty);
  });
}
