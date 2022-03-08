import 'package:dio/dio.dart';

class RemoteTodoListData{
  final dio = Dio();

  Future<dynamic> getTodoList() async{
    var url = 'https://jsonplaceholder.typicode.com/todos';
    var response = await dio.get(url);
    return response.data;
  }

}