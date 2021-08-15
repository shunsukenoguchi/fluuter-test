import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final mainProvider = ChangeNotifierProvider<MainModel>(
  (ref) => MainModel(),
);

class MainModel extends ChangeNotifier {
  int counter = 0;
  final List<String> todoList = ['勉強', '映画を見る', '寝る'];
  void incrementCounter(String todo) {
    todoList.add(todo);
    notifyListeners();
  }
}
