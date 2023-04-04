import 'package:flutter/material.dart';
import 'package:todo_app_tutorial/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  ToDoItem({Key? key, required this.todo, this.onToDoChange, this.onDeleteItem}) : super(key: key);

  final ToDo todo;
  final onToDoChange;
  final onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          print("Clicked on ToDo Item");
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: todo.isDone ? Icon(Icons.check_box, color: tdBlue,) : Icon(Icons.check_box_outline_blank),
        title: Text(todo.todoText!, style: TextStyle(
            fontSize: 16, color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null),),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            color: Colors.white,
              iconSize: 18,
              onPressed: (){
              print("Clicked on delete icon");
              onDeleteItem(todo.id);
              }, icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
