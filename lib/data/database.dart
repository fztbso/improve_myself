import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app_tutorial/model/todo.dart';

class ToDoDataBase {
  List<ToDo> todosList = [
    ToDo(id: "1", todoText: "bekir"),
  ];
  final _myBox = Hive.box("mybox");

  void createInitialData() {
    todosList = [
      ToDo(id: "1", todoText: "bekir"),
      ToDo(id: "2", todoText: "hüseyin")
    ];
  }

  void loadData() {
    todosList = _myBox.get("bbb");
  }

  void updateDatabase() {
    _myBox.put("bbb", todosList);
  }

}