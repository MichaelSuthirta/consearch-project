import 'package:consearch/UI/Components/BorderedText.dart';
import 'package:flutter/material.dart';

class NumberedButton extends StatelessWidget{
  final String text, imgPath, number;
  final VoidCallback? onPress;
  
  final List<Color> gradientColor = const [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(179, 191, 239, 1)
  ];
  
  const NumberedButton({
    super.key, 
    required this.text, 
    required this.imgPath, 
    required this.number,
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      splashColor: Colors.white.withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        width: double.maxFinite,
        height: 90,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: gradientColor,
              radius: 1.5,
              focal: Alignment.center
            ),
            borderRadius: BorderRadius.circular(15),
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
              //Number
              BorderedText(
                text: number,
                fontWeight: FontWeight.w400,
                fontSize: 60,
                fontFamily: "Jeju Hallasan",
                shadow: false,
                fillColor: Color.fromRGBO(207, 212, 230, 1),
              ),

              //Content
              Container(
                margin: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                width: 40,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.network(imgPath).image,
                      fit: BoxFit.fill
                  ),
                )
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 250
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    text.toUpperCase(),
                    style: TextStyle(
                        fontFamily: "Lexend Mega",
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}