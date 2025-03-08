import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  //run this when user opens app for first time
  void createInitialData() {
    toDoList = [
      ["exercise", false],
    ];
  }

  //load data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update data from db
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
