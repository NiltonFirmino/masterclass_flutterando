import '../data/local_todo_list_datasource.dart';
import '../data/remote_todo_list_datasource.dart';
import '../models/todo_list_model.dart';
import '../service/check_internet_service.dart';

class TodoListRepository {
  final remoteTodoListDataSource = RemoteTodoListData();
  final localTodoListDataSource = LocalTodoListData();
  final checkInternetService = CheckInternetService();

  Future<List<TodoListModel>> getAllTodoList() async {


      
      /* Remote
      final list = await remoteTodoListDataSource.getTodoList() as List;
      await localTodoListDataSource.saveTodoList(list);
      final todoList = list.map(TodoListModel.fromJson).toList();
      return todoList;
      */

      final list = await localTodoListDataSource.getTodoList();
      final todoList = list.map(TodoListModel.fromJson).toList();
      return todoList;


    /*if (await checkInternetService.isConnected() == true) {
      final list = await remoteTodoListDataSource.getTodoList() as List;
      await localTodoListDataSource.saveTodoList(list);
      final todoList = list.map(TodoListModel.fromJson).toList();
      return todoList;
    } else {
      final list = await localTodoListDataSource.getTodoList();
      final todoList = list.map(TodoListModel.fromJson).toList();
      return todoList;
    }*/


  }
}
