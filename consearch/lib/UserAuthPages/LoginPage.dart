import 'package:consearch/SamplePages/SamplePage.dart';
import 'package:consearch/UI/Buttons/BoxIconButton.dart';
import 'package:consearch/main.dart';
import 'package:flutter/material.dart';
import '/UI/DisplayConstants.dart';
import '/UI/GradientBackground.dart';
import '/UI/TextBoxes/AuthTextBox.dart';
import '/UI/Buttons/AppButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  //function to return to start page
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

    return GestureDetector( //For scroll
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
          child: Column( //Login form
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text(
                  "Log In",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 30
                  ),
                ),
              ),
              //AuthTextBox class from TextBoxes button
              AuthTextBox(
                hintText: "Email",
                height: textBoxHeight
              ),
              AuthTextBox(
                  hintText: "Password",
                  height: textBoxHeight
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: AppButton( //Class from Buttons folder
                  text: "Log In",
                  onPress: (){
                    //Temporary to check UI element
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SamplePage()
                      )
                    );
                  },
                ),
              ),
              //Line below the button
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                  height: 15,
                  width: 100,
                  child: TextButton(
                      //To shrink the size of the text button
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()) //TODO: Change to forgot password function
                        );
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.black.withOpacity(0.6)
                        ),
                      )
                  ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5), //Spacing between text and button
                child: Text(
                  "OR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 10
                  ),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Uses BoxIconButton class in Buttons folder
                  BoxIconButton(
                      iconPath: 'assets/UI/Icons/Google_Icon.png',
                      onPress: (){}
                  ),
                  BoxIconButton(
                      iconPath: 'assets/UI/Icons/Apple_Icon.png',
                      onPress: (){}
                  ),
                  BoxIconButton(
                      iconPath: 'assets/UI/Icons/FB_Icon.png',
                      onPress: (){}
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