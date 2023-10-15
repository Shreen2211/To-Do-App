import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/View/Screens/homeScreen.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splashIconSize: 200,
        splashTransition: SplashTransition.rotationTransition,
        animationDuration: const Duration(seconds: 1),
        splash: 'assets/image/OIP.jpg',
        nextScreen: HomeScreenTodoApp());
  }
}
