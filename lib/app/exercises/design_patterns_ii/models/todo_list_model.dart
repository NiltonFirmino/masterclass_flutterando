import 'package:flutter/foundation.dart';

class TodoListModel {
  final String id;
  final String title;
  final String isChecked;

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
