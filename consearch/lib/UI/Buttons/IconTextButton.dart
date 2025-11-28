import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget{
  final String iconPath;
  final String text;
  final VoidCallback? onPress;
  final List<Color>? bgColor;
  final double? width, height;

  const IconTextButton({
    super.key,
    required this.iconPath,
    this.bgColor,
    this.width,
    this.height,
    required this.onPress,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: onPress,
          borderRadius: BorderRadius.circular(5),
          splashColor: Color.fromRGBO(253, 237, 213, 0.4),
          child: Ink(
              width: width ?? 64,
              height: height ?? 32,

              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                        colors: bgColor ?? [
                          Color.fromRGBO(253, 227, 213, 1),
                          Color.fromRGBO(255, 208, 183, 1)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 2
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Image(image: AssetImage(iconPath)),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 120
                        ),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            text,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Lexend Mega",
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      )
                    ],
                  )
          ),
        )
    );
  }
}