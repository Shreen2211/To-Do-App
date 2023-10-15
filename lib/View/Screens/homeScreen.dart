import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Model/toDoList/dataItem.dart';
import 'package:untitled/ViewModel/bloc/Cubit/counter_state.dart';
import 'package:untitled/ViewModel/bloc/Cubit/todoCubit.dart';

import '../../ViewModel/Utils/Navgation.dart';
import '../Componant/homeWidget/toDoItem.dart';
import 'Edit_Delete.dart';
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
      body: BlocConsumer<ToDoCubit, counterStates>(
        builder: (context, state) {
          var cubit = ToDoCubit.get(context);
          return Visibility(
            visible: cubit.newlist.isNotEmpty,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ToDoItem(
                    todo: cubit.newlist[index],
                    onTap: () {
                      cubit.setData(index);
                      Navgation.push(context, EditAndDelete());
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: cubit.newlist.length),
               replacement: Center(
                 child: Lottie.network('https://lottie.host/e1ffe76f-d4cd-48d3-8d19-5ae124e96a04/hzacnXyAAY.json')  ,
               ),
          );
        },
        listener: (context, state) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navgation.push(context, AddToDo());
        },
        backgroundColor: Colors.purpleAccent,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
