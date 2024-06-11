import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon({required this.text, this.ontap});
  VoidCallback? ontap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 40,
        child: Center(child: Text(text)),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
