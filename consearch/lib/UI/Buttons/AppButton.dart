import 'package:flutter/material.dart';

class AppButton extends StatelessWidget{
  final Color? bgColor;
  final String text;
  final double? height;
  final double? width;
  final Color? textColor;
  final VoidCallback? onPress;

  AppButton({
    super.key,
    required this.text,
    this.bgColor,
    this.height,
    this.width,
    this.textColor,
    required this.onPress
  });

  @override
  Widget build(BuildContext context){
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.white.withOpacity(0.2),
        child: Ink(
          width: width ?? double.infinity,
          height: height ?? 30,
          decoration: BoxDecoration(
              color: bgColor ?? Color.fromRGBO(119, 134, 191, 1),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: textColor ?? Colors.black
              ),
            ),
          )
        ),
      ),
    );
  }
}