//import 'dart:ffi';

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {

  GlobalKey<FormState>_formkey = GlobalKey<FormState>();
 String? _name, _email;
 TextEditingController _password = TextEditingController();
 TextEditingController _confirmPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.blue),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                // margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Here",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 16, right: 16),
                child:
                    userNameInputField(),
                ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                child: emailInputField(),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                child: passwordInputField(),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                child: confirmPasswordInputField(),
              ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60),
            child: MaterialButton(
              onPressed: () {
                clickOnSignUpButton();
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userNameInputField(){
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: "User name",
          hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      validator: (String? value){
        if(value!.isEmpty){
          return "Enter your name";
        }
        return null;
      },
    );
  }

  Widget emailInputField(){
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: "Email",
          hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      validator: (String? value){
        if (value!.isEmpty){
          return "Please enter your email id";
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]")
            .hasMatch(value)) {
          return "Please enter valid email";
        }
        return null;
      },
    );
  }

  Widget passwordInputField(){
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: "Password",
          hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      validator: (String? value) {
        if (value!.isEmpty) {
          return "Please enter password";
        }
        return null;
      },
    );
  }

  Widget confirmPasswordInputField(){
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: "Confirm password",
          hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
      validator: (String? value) {
        if (value!.isEmpty) {
          return "Please re-enter password";
        }
        if (_password.text != _confirmPassword.text) {
          return "Password do not match";
        }
        return null;
      },
    );
  }

  void clickOnSignUpButton(){
      if (_formkey.currentState!.validate()){
      print("Sucessfull");
      return;
    }else{
      print("Not Worked");
    }
  }
}
