import 'package:flutter/material.dart';

import 'DisplayConstants.dart';

class GradientBackground extends StatelessWidget{
  late final Widget content;
  GradientBackground({super.key, required this.content});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: DisplayConstants.gradientBGColor
          )
        ),
        child: content
      )
    );
  }
}