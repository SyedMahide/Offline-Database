import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offline_database/core/MyColor.dart';

class MyCustomWidget {

  /*Widget myCustomInputField(TextEditingController _controller, String hintText,Function(String) fun){
    return TextFormField(
      validator: fun(String? value) {
        if (value!.isEmpty) {
          return "Please enter email";
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9-]+.[a-z]").hasMatch(value)) {
          return "Please enter valid email";
        }
        return null;
      },
      controller: _controller,
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
        hintText: hintText,
        hintStyle: TextStyle(
            color: CustomColors.primaryColor, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }*/
}