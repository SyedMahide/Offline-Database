// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:offline_database/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  String? _name, _email;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 // child: Colors.white,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 200),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Welcome to My Tatti",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70, left: 16, right: 16),
                  child: TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]")
                          .hasMatch(value)) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
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
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
                  child: TextFormField(
                         validator: (String? value) {
                         if (value!.isEmpty) {
                           return "Please enter password";
                         }
                     return null;
                   },
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
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
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),

                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40),
                  child: MaterialButton(
                    onPressed: () {
                         if (_formkey.currentState!.validate()){
                             print("Sucessfull");
                              return;
                            }else{
                           print("Not Worked");
                    }

                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Or",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
