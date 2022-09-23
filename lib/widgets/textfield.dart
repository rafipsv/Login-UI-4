// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final BuildContext context;
  final String hintText;
  final IconData icon;
  final bool isPass;
  const MyTextField({
    required this.context,
    required this.hintText,
    required this.icon,
    required this.isPass,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Color.fromARGB(255, 245, 158, 29),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
