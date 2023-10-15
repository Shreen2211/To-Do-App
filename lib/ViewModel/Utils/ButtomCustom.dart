import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttomCustom extends StatelessWidget {
  String ? buttomName;
   void Function()? onPressed;
   buttomCustom({required this.onPressed,required this.buttomName,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      height: 90.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
          ),
          onPressed:onPressed,
          child: Text(
            '$buttomName',
            style: TextStyle(
              fontSize: 20.0,
            ),
          )),
    );
  }
}
