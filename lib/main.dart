import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/ViewModel/bloc/Cubit/todoCubit.dart';

import 'View/Screens/SplashScreen.dart';
import 'View/Screens/homeScreen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ToDoCubit(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    ),
  ));
}
