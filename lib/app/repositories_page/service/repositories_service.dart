import 'package:dio/dio.dart';
import 'package:mockups_masterclass/app/repositories_page/models/repositories_model.dart';




class RepositoriesService {
  final dio = Dio();
  Future getRepositories() async {
    final response =
        await dio.get('https://api.github.com/users/NiltonFirmino/repos',);
       
    final list = response.data as List;
    
    final repositories = list
        .map((e) => RepositoriesModel(
              e['name'],
              e['description'],
              e['html_url'],
            ))
        .toList();
    
    return repositories;
  }
}
