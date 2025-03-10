import 'package:flutter/material.dart';
import 'package:new_project/onboarding/loginScreen.dart';
import 'package:new_project/onboarding/registrationScreen.dart';
import 'package:new_project/onboarding/splashScreen.dart';
import 'onboarding/pinVerifacationScreen.dart';
import 'onboarding/setPasswordScreen.dart';
import 'onboarding/emailVerifacationScreen.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bk Gas',
      initialRoute: '/',
      routes: {
        '/':(context)=> SplashScreen(),
        '/registration':(context)=> registrationScreen(),
        '/login':(context)=> loginScreen(),
        '/emailVerifacation':(context)=> emailVerifacationScreen(),
        '/pinVerifacation':(context)=> pinVerifacationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),

      },
    );
  }
}
