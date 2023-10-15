import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Model/toDoList/dataItem.dart';
import 'counter_state.dart';

class ToDoCubit extends Cubit<counterStates> {
  ToDoCubit() : super(initstate());

  static ToDoCubit get(context) => BlocProvider.of<ToDoCubit>(context);
  List<data> newlist = [];
  int CurrentState = 0;
  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController? titleController = TextEditingController();
  TextEditingController? descriptionController = TextEditingController();
  TextEditingController? startDateController = TextEditingController();
  TextEditingController? endDateController = TextEditingController();

  void clear() {
    titleController?.text = '';
    descriptionController?.text = '';
    startDateController?.text = '';
    endDateController?.text = '';
  }

  void setData(int index) {
    CurrentState = index;
    titleController?.text = newlist[index].name ?? '';
    descriptionController?.text = newlist[index].describtion ?? '';
    startDateController?.text = newlist[index].startdate ?? '';
    endDateController?.text = newlist[index].enddate ?? '';
  }

  void addTask() {
    data todo = data(
      name: titleController?.text,
      describtion: descriptionController?.text,
      startdate: startDateController?.text,
      enddate: endDateController?.text,
    );
    newlist.add(todo);
    clear();
    emit(addTaskState());
  }

  void EditTask() {
    newlist[CurrentState].name = titleController?.text;
    newlist[CurrentState].describtion = descriptionController?.text;
    newlist[CurrentState].startdate = startDateController?.text;
    newlist[CurrentState].enddate = endDateController?.text;
    clear();
    emit(editTask());
  }

  void DeleteTask() {
    newlist.removeAt(CurrentState);
    emit(deleteState());
    clear();
  }
}
