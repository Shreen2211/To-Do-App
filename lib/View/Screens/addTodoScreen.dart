import 'package:flutter/material.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Center(
            child: Text(
          'Add Task',
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
              )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
              )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
              )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  width: 3,
                  color: Colors.pinkAccent,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
