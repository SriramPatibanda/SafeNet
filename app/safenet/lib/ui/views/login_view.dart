import 'package:flutter/material.dart';
import 'package:safenet/ui/constants.dart';
import 'package:safenet/ui/customWidgets/customSignInButton.dart';
import 'package:safenet/ui/customWidgets/facebookSignInButton.dart';
import 'package:safenet/ui/customWidgets/googleSignInButton.dart';
import 'package:safenet/ui/customWidgets/mainTitle.dart';
import 'package:safenet/ui/views/register_view.dart';

class LoginView extends StatelessWidget {
  static const String id = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120.0),
              Center(child: MainTitle()),
              SizedBox(
                height: 80.0,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                onChanged: null,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your Phone Number',
                    prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                obscureText: true,
                onChanged: null,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password',
                    prefixIcon: Icon(Icons.lock_outline)),
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomSignInButton(
                onPressed: null,
                buttonColor: Color(0xff51adcf),
                buttonText: "Sign In",
              ),
              SizedBox(
                height: 8.0,
              ),
              FlatButton(onPressed: null, child: Text("Forgot Password?")),
              SizedBox(
                height: 8.0,
              ),
              GoogleSignInButton(),
              SizedBox(
                height: 15.0,
              ),
              FacebookSignInButton(),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterView.id);
                    },
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Create one",
                      style: TextStyle(color: Color(0xff51adcf)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
