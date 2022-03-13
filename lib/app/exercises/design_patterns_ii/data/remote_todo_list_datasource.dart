import 'package:dio/dio.dart';

class RemoteTodoListData {
  final dio = Dio();

  dynamic url = 'http://localhost:3031/todolist';
  Future<dynamic> getTodoList() async {
    var response = await dio.get(
      url,
    );
    return response.data;
  }
}
