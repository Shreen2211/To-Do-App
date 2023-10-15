import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class formFieldCustom extends StatelessWidget {
  String ? title;
  Widget? iconName;
  TextInputType? keyboardType;
  bool  readOnly=false;
  void Function()? onTap;
  TextEditingController? controller;
  formFieldCustom({this.onTap,required this.readOnly,this.keyboardType,required this.controller,required this.iconName,required this.title,super.key});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      keyboardType:keyboardType ,
      controller: controller,
      readOnly: readOnly,
      decoration: InputDecoration(
          prefixIcon:iconName,
          labelText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.pinkAccent,
              width: 3,
            ),
          )),
    );
  }
}
