import 'package:mockups_masterclass/app/repositories/modal/repositories_modal.dart';
import 'package:mockups_masterclass/app/repositories/service/repositories_service.dart';

class RepositoriesStore {
  //controller State
  final repositoriesService = RepositoriesService();

  List<RepositoriesModel> repositories = [];
  

  Future<List<RepositoriesModel>> getAllRepositories() async {
    repositories  = await repositoriesService.getRepositories();
    return repositories;
  }

}
