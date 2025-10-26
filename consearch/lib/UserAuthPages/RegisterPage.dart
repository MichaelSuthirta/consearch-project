import 'package:consearch/UserAuthPages/LoginPage.dart';
import 'package:consearch/main.dart';
import 'package:flutter/material.dart';
import '/UI/DisplayConstants.dart';
import '/UI/GradientBackground.dart';
import '/UI/TextBoxes/AuthTextBox.dart';
import '/UI/Buttons/AppButton.dart';

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
    double textBoxHeight = 30;
    final TextEditingController controller;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector( //For scroll navigation
      onVerticalDragEnd: (DragEndDetails details) => navigate(details),
      child: GradientBackground( //Screen background uses class in UI folder
        content: Container( //Grey container for Register form
          decoration: BoxDecoration(
            color: DisplayConstants.getGreyFrameColor(),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.25),
                blurStyle: BlurStyle.normal,
                blurRadius: 4,
                offset: Offset.fromDirection(0.5, 10)
              )
            ]
          ),
          height: 289,
          width: double.maxFinite, //As wide as screen width
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20), //Container padding
          child: Column( //Registration form
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 30
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    //AuthTextBox class from TextBoxes folder
                    AuthTextBox(
                        hintText: "Username",
                        height: textBoxHeight
                    ),
                    AuthTextBox(
                        hintText: "Email",
                        height: textBoxHeight
                    ),
                    AuthTextBox(
                        hintText: "Password",
                        height: textBoxHeight
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: AppButton(
                        text: "Create account",
                        onPress: (){},
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.6)
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 40,
                    child: TextButton( //For clickable Log In text
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage())
                          );
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Colors.black
                          ),
                        )
                    )
                  )
                ],
              )
            ]
          ),
        ),
      )
    );
  }
}