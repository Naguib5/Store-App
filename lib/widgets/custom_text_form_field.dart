import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.HentText,
      this.inputType,
      this.onchanged,
      this.obsecureText = false});
  String? HentText;
  bool obsecureText;
  TextInputType? inputType;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obsecureText,
      onChanged: onchanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)),
          hintText: HentText,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          ))),
    );
  }
}
