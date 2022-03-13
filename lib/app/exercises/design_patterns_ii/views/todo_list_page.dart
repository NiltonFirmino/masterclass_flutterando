import 'package:flutter/material.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/models/todo_list_model.dart';
import 'package:mockups_masterclass/app/exercises/design_patterns_ii/store/todo_list_store.dart';

import '../../../../core/theme/text_theme.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  late Future<List<TodoListModel>> todoList;

  @override
  void initState() {
    super.initState();
    todoList = TodoListStore().displayAllTodoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: todoList,
        builder: (BuildContext context,
            AsyncSnapshot<List<TodoListModel>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    snapshot.data![index].title,
                    style: darkTextTheme.headline3,
                  ),
                  subtitle: Text(
                    snapshot.data![index].isChecked.toString(),
                    style: darkTextTheme.headline3,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      //TodoListStore().deleteTodoList(snapshot.data![index].id);
                    },
                  ),
                );
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
