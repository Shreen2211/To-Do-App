import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/ViewModel/Utils/ButtomCustom.dart';
import 'package:untitled/ViewModel/bloc/Cubit/todoCubit.dart';

import '../Componant/AddTaskScreen/formFielsCustom.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = ToDoCubit.get(context);
    cubit.clear();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(
            child: Text(
          'Add Task',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: cubit.form,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    formFieldCustom(
                        readOnly: false,
                        controller: cubit.titleController,
                        iconName: const Icon(Icons.title),
                        title: 'Title'),
                    const SizedBox(
                      height: 12,
                    ),
                    formFieldCustom(
                        readOnly: false,
                        controller: cubit.descriptionController,
                        iconName: const Icon(Icons.description),
                        title: 'Description'),
                    const SizedBox(
                      height: 12,
                    ),
                    formFieldCustom(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000, 1, 1),
                              lastDate:DateTime.now().add(const Duration(days: 365*5)),).then((value){
                            if(value!=null){
                              cubit.startDateController?.text=DateFormat("yyyy/MM/dd").format(value);
                            }
                          });
                        },
                        keyboardType: TextInputType.none,
                        readOnly: true,
                        controller: cubit.startDateController,
                        iconName: const Icon(Icons.timer_outlined),
                        title: 'Start Date'),
                    const SizedBox(
                      height: 12,
                    ),
                    formFieldCustom(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000, 1, 1),
                              lastDate:
                                  DateTime.now().add(const Duration(days: 365 * 5))).then((value){
                                    if(value!=null){
                                      cubit.endDateController?.text=DateFormat("yyyy/MM/dd").format(value);
                                    }
                          });
                        },
                        readOnly: true,
                        keyboardType: TextInputType.none,
                        controller: cubit.endDateController,
                        iconName: const Icon(Icons.timer_off_outlined),
                        title: 'End Date'),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          buttomCustom(onPressed: (){
            if(cubit.form.currentState!.validate())
              {
                cubit.addTask();
              }
          },
              buttomName: 'Add Task'),
        ],
      ),
    );
  }
}
