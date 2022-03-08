import 'package:flutter_test/flutter_test.dart';
import 'package:mockups_masterclass/app/repositories/store/repositores_store.dart';

void main() {
  test('Testando se não retorna vázio a busca na API', () async {
    final store = RepositoriesStore();
    final result = await store.getAllRepositories();
    expect(result, isNotEmpty);
  });
    test('Testando se o primeiro nome na busca da api é APP-to-do-List', () async {
    final store = RepositoriesStore();
    final result = await store.getAllRepositories();
    expect(result[0].name, "APP-to-do-List");
  });
}
