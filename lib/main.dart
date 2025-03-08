import 'package:flutter/material.dart';
import 'package:new_project/loginScreen.dart';
import 'package:new_project/registrationScreen.dart';
import 'package:new_project/splashScreen.dart';
import 'emailVerifacationScreen.dart';
import 'pinVerifacationScreen.dart';
import 'setPasswordScreen.dart';
void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bk Gas',
      initialRoute: '/login',
      routes: {
        '/':(context)=> splashScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerifacation':(context)=> emailVerifacationScreen(),
        '/pinVerifacation':(context)=> pinVerifacationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),

      },
    );
  }
}
