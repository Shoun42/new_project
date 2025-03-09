import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'style/style.dart';

class pinVerifacationScreen extends StatefulWidget {
  const pinVerifacationScreen({super.key});

  @override
  State<pinVerifacationScreen> createState() => _pinVerifacationScreenState();
}

class _pinVerifacationScreenState extends State<pinVerifacationScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('PIN Verification'),
        centerTitle: true,
        backgroundColor: colorWhite,
      ),

      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               /* Text(
                  'PIN Varification',
                  style: Head1Text(colorDarkBlue),
                ),*/
                SizedBox(height: 1),
                Text(
                 " We have sent a verification code to your number or email Please check your number and enter the code.",
                  style: Head6Text(colorLightGray),
                ),
                SizedBox(height: 20),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  pinTheme: AppOTPStyle(),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(microseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v){

                  },
                  onChanged:(value) {

                  },
                ),
                SizedBox(height: 20),
                Spacer(),
                Container(

                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: PrimaryButtonChild('Verify'),
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
