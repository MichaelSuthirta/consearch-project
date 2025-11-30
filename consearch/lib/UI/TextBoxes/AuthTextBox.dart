import 'package:flutter/material.dart';

class AuthTextBox extends StatelessWidget{
  final String hintText;
  final double height;
  final TextEditingController controller;
  
  final Color color = const Color.fromRGBO(119, 134, 191, 0.3);
  const AuthTextBox({
    super.key,
    required this.hintText,
    required this.height,
    required this.controller,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      height: height,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide.none
            ),
            filled: true,
            fillColor: color,
            hintText: hintText,
            hintStyle: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 12
            )
        ),
        autofocus: true,
        controller: controller,
        obscureText: hintText.toLowerCase().compareTo("password") == 0 ? true : false,
      )
    );
  }
}