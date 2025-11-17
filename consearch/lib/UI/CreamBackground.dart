import 'package:flutter/material.dart';

import 'DisplayConstants.dart';

class CreamBackground extends StatelessWidget{
  late final Widget content;
  CreamBackground({super.key, required this.content});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: DisplayConstants.getMainBgColor()
          ),
          child: SafeArea(
            child: content,
          )
        )
    );
  }
}