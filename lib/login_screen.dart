import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                margin: EdgeInsets.only(top: 10, left: 16, right: 16),
                child: TextFormField(
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
                  onPressed: (){},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Container(
                    height: 30,
                    width: 150,
                    child: Text("Login",
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
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
