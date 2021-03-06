import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/repositories_page/components/repositories_listtile.dart';
import 'package:mockups_masterclass/app/repositories_page/models/repositories_model.dart';
import 'package:mockups_masterclass/app/repositories_page/store/repositories_store.dart';

import '../../../core/theme/text_theme.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  State<RepositoriesPage> createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  late Future<List<RepositoriesModel>> repositoriesList;

  @override
  void initState() {
    super.initState();
    repositoriesList = RepositoriesStore().getAllRepositories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: repositoriesList,
        builder: (BuildContext context,
            AsyncSnapshot<List<RepositoriesModel>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return repositoriesListTile(
                    context: context,
                    name: snapshot.data![index].name,
                    description: snapshot.data![index].description,
                    url: snapshot.data![index].url);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          }
        },
      ),
    );
  }
}
