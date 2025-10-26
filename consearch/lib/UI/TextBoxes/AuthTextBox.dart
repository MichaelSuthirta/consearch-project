import 'package:flutter/material.dart';

class AuthTextBox extends StatefulWidget{
  final String hintText;
  final double height;
  
  final Color color = const Color.fromRGBO(119, 134, 191, 0.3);
  const AuthTextBox({
    super.key,
    required this.hintText,
    required this.height,
  });

  @override
  State<AuthTextBox> createState() => _AuthTextBoxState();
}

class _AuthTextBoxState extends State<AuthTextBox>{
  @override
  Widget build(BuildContext context){
    return Container(
      height: widget.height,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide.none
            ),
            filled: true,
            fillColor: widget.color,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 12
            )
        ),
      )
    );
  }
}