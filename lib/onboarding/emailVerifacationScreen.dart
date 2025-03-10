import 'package:flutter/material.dart';

import '../style/style.dart';

class emailVerifacationScreen extends StatefulWidget {
  const emailVerifacationScreen({super.key});

  @override
  State<emailVerifacationScreen> createState() =>
      _emailVerifacationScreenState();
}

class _emailVerifacationScreenState extends State<emailVerifacationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Email Address',
                  style: Head1Text(colorDarkBlue),
                ),
                SizedBox(height: 1),
                Text(
                  'A 6 digit verification pin will send to your email address',
                  style: Head6Text(colorLightGray),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: "@gmail.com",
                  textAlign: TextAlign.center,
                  decoration: AppInputDecoration('Email Address'),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: PrimaryButtonChild('Next'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
