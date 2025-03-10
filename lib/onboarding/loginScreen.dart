import 'package:flutter/material.dart';
import 'package:new_project/style/style.dart';

import '../Api/api.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  Map<String,String> FromValue ={"email":" ", "password":""};
  bool Loading=false;

  InputOnChange(MapKey,Textvalue){
    setState(() {
      FromValue.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async {
    if (FromValue["email"]!.length == 0) {
      ErrorToast("Email Required!");
    }
    else if (FromValue["password"]!.length == 0) {
      ErrorToast("Password Required!");
    }
    else{
      setState(() {Loading=true; });

      bool res=await LoginRequest(FromValue);
      if(res==true){

      }
      else {
        setState(() {Loading=false ; });
      }

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('Login With B.K Gas',style: Head1Text(colorDarkBlue),),
                SizedBox(height: 1),
                Text('B.K Shop',style: Head6Text(colorLightGray),),
                SizedBox(height: 20),
                TextFormField(

                  onChanged: (Textvalue){
                    InputOnChange("email", Textvalue);
                  },

                  decoration: AppInputDecoration('Email Address'),),
                SizedBox(height: 20),

                TextFormField(
                  onChanged: (Textvalue){
                    InputOnChange("password", Textvalue);
                  },
                  decoration: AppInputDecoration('Password'),),
                SizedBox(height: 20,),

                Container(child: ElevatedButton(
                    style: AppButtonStyle(),
                    child:PrimaryButtonChild('Login'),
                    onPressed: () {
                      FormOnSubmit();
                    },
                ),)

              ],
            ),
          )
        ],


      ),
    );
  }
}
