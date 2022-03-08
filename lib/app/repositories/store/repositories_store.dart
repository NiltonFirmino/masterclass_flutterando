import 'package:mockups_masterclass/app/repositories/models/repositories_model.dart';
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
