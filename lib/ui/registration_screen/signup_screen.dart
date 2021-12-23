//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/model/user_info.dart';
import 'package:offline_database/database_helper.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';
import 'package:offline_database/core/MyColor.dart';

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
  void initState() {


  }

  Future getUserInfo() async{
    final db= await DatabaseHelper.initDatabase();
    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('user_info');

    // List<UserInfo> u=maps.map((e) => UserInfo.fromJson(e)).toList();
    // print(u);
    List.generate(maps.length, (i) {
      var a= UserInfo(
          id: maps[i]['id'],
          user_name: maps[i]['name'],
          email: maps[i]['email'],
          password: maps[i]['pass']
      );
    });
  }

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
               // color: Colors.white,
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: CustomColors.primaryColor),
                ),
              ),
              Container(
                alignment: Alignment.center,
              //  color: Colors.white,
                // margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Here",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: CustomColors.primaryColor),
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
              color: CustomColors.primaryColor,
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
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          hintText: "User name",
          hintStyle: TextStyle(
              color: CustomColors.primaryColor,
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
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          hintText: "Email",
          hintStyle: TextStyle(
              color: CustomColors.primaryColor,
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
      controller: _password,
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          hintText: "Password",
          hintStyle: TextStyle(
              color: CustomColors.primaryColor,
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
      controller: _confirmPassword,
      decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: CustomColors.primaryColor),
          ),
          hintText: "Confirm password",
          hintStyle: TextStyle(
              color: CustomColors.primaryColor,
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
      getUserInfo();
    }else{
      print("Not Worked");
    }
  }
}
