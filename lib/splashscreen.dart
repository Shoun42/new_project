import 'package:flutter/material.dart';
import 'registrationScreen.dart';
import 'style/style.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    'asset/images/logo .png',
                    width: 400,
                    height: 200,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    'asset/images/taxt.png',
                    width: 150,
                    height: 90,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          // Skip button
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondSplashScreen()),
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/images/rider.png',
              width: 300,
              height: 150,
            ),
            SizedBox(height: 20),
            //CircularProgressIndicator(),
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => registrationScreen()),                   );
                },
                child: Text(
                  'Skip',
                  style:TextStyle(color: Colors.black,fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
