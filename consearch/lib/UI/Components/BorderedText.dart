import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget{
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily;
  final Color? borderColor, fillColor;
  final bool shadow;
  const BorderedText({
    super.key,
    required this.text,
    required this.fontWeight,
    this.fontSize = 40,
    required this.fontFamily,
    this.borderColor,
    this.fillColor,
    this.shadow = true
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = borderColor ?? Colors.black
          ),
        ),
        Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: fillColor ?? Colors.white,
            shadows: shadow ? [
              Shadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset.fromDirection(1.4, 6),
                  blurRadius: 5
              )
            ] : null
          ),
        )
      ],
    );
  }
}