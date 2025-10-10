import 'package:consearch/main.dart';
import 'package:flutter/material.dart';
import '/UI/DisplayConstants.dart';
import '/UI/GradientBackground.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{

  void navigate(DragEndDetails details){
    if(details.primaryVelocity!.compareTo(0) == 1){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(title: "Consearch")
          )
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onVerticalDragEnd: (DragEndDetails details) => navigate(details),
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => MyHomePage(title: "Consearch")
            )
        );
      },
      child: GradientBackground(
        content: Container(
          decoration: BoxDecoration(
            color: DisplayConstants.getGreyFrameColor()
          ),
          height: 200,
          width: 200,
          child: Column(
            children: [
              Text("A")
            ]
          ),
        ),
      )
    );
  }
}