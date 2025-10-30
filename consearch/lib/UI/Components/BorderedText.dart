import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget{
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  const BorderedText({
    super.key,
    required this.text,
    required this.fontWeight,
    this.fontSize = 40
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Lexend Mega",
            fontSize: fontSize,
            fontWeight: fontWeight,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black
          ),
        ),
        Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Lexend Mega",
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: Colors.white,
            shadows: [
              Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset.fromDirection(1.4, 6),
                  blurRadius: 5
              )
            ]
          ),
        )
      ],
    );
  }
}