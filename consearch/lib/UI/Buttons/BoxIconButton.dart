import 'package:flutter/material.dart';

class BoxIconButton extends StatelessWidget{
  final String iconPath;
  final VoidCallback? onPress;
  final Color? bgColor;
  final double? width, height;

  const BoxIconButton({
    super.key,
    required this.iconPath,
    this.bgColor,
    this.width,
    this.height,
    required this.onPress
  });

  @override
  Widget build(BuildContext context){
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 0.75,
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(5),
        splashColor: Color.fromRGBO(119, 134, 191, 0.4),
        child: Ink(
            width: width ?? 64,
            height: height ?? 32,
            decoration: BoxDecoration(
              color: bgColor ?? const Color.fromRGBO(119, 134, 191, 0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Image(image: AssetImage(iconPath))
            )
        ),
      ),
    );
  }

}