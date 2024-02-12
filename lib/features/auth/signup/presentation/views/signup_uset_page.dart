import 'package:flutter/material.dart';
import 'package:wedding/core/common/custom_button.dart';
import 'package:wedding/core/common/custom_text_feild.dart';

class SignUpUserPage extends StatelessWidget {
  const SignUpUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.deepOrange,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("SignUp" , style: TextStyle(color: Colors.white , fontSize: 24 , fontWeight: FontWeight.bold),),
                      ),
                      const CustomTextFeild(hint: "UserName",secure: false,icon: Icon(Icons.person),),
                      const SizedBox(height: 8,),
                      const CustomTextFeild(hint: "Phone Number",secure: false,icon: Icon(Icons.phone),),
                      const SizedBox(height: 8,),
                      const CustomTextFeild(hint: "Email",secure: false,icon: Icon(Icons.email),),
                      const SizedBox(height: 8,),
                      const CustomTextFeild(hint: "Password",secure: true,icon: Icon(Icons.password),),
                      const SizedBox(height: 8,),
                      const CustomTextFeild(hint: "Password Confirm",secure: true,icon: Icon(Icons.password),),
                      const SizedBox(height: 16,),

                      CustomButton(status:"Sign Up" , onPressed: (){}),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
