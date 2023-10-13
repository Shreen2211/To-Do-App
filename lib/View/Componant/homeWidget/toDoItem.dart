import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Model/toDoList/dataItem.dart';

class ToDoItem extends StatelessWidget {
  final data todo;
  const ToDoItem({required this.todo,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap:(){},
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${todo.name??''}',style: const TextStyle(fontSize: 25.0),),Text('${todo.describtion??''}')
          ],
        ),

      ),
    );
  }
}
