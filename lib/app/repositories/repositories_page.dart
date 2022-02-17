import 'package:flutter/material.dart';
import 'package:mockups_masterclass/core/components/bottombar.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({ Key? key }) : super(key: key);

  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repositories'),
      ),
      body: Center(
        child: Text('Repositories'),
      
      ),
      bottomNavigationBar: MyBottomBar()
    );
    
  }
}