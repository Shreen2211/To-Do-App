import 'package:flutter/material.dart';
import 'package:untitled/Model/toDoList/dataItem.dart';

import '../../ViewModel/Utils/Navgation.dart';
import '../Componant/homeWidget/toDoItem.dart';
import 'addTodoScreen.dart';

class HomeScreenTodoApp extends StatelessWidget {
  HomeScreenTodoApp({super.key});

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leading: const Icon(Icons.menu),
        title: const Text(
          'To Do App',
          style: TextStyle(fontSize: 25.0),
        ),
        actions: const [
          Icon(Icons.vertical_distribute_sharp),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.input),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ToDoItem(
              todo: data(),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10.0,
            );
          },
          itemCount: 5),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navgation.push(context, AddToDo());
        },
        backgroundColor: Colors.purpleAccent,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
