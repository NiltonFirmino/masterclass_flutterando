import 'package:flutter_test/flutter_test.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/repositories/todo_list_repositories.dart';

void main() {
  test('Testando se o primeiro TITLE na busca da api é Novo', () async {
    final store = TodoListRepository();
    final result = await store.getAllTodoList();
    print(result);
    expect(result[0].title, "Novo");
  });
}
