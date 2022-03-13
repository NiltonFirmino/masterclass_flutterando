import 'package:flutter/foundation.dart';

class TodoListModel {
  final dynamic id;
  final String title;
  final bool isChecked;

  TodoListModel({
    required this.id,
    required this.title,
    required this.isChecked,
  });

  factory TodoListModel.fromJson(dynamic json) {
    return TodoListModel(
      id: json['id'],
      title: json['title'],
      isChecked: json['isChecked'],
    );
  }
}
