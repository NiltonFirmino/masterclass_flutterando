import 'package:flutter_test/flutter_test.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/service/check_internet_service.dart';

void main() {
    test('Testando se não retorna vázio a busca na API', () async {
    final store = CheckInternetService();
    final result = await store.isConnected();
    
    expect(()=>result, true);
  });
}