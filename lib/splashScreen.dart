
import 'package:flutter/material.dart';

import 'style/style.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child:Image.asset('asset/images/logo .png',
                width: 400,
                height: 200,
                alignment:Alignment.center),
          ),
        ],

      ),
    );
  }
}
