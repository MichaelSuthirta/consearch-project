import 'package:consearch/UI/DisplayConstants.dart';
import 'package:flutter/material.dart';

class TicketPreview extends StatelessWidget{
  final String title, performer, date, location;


  const TicketPreview({
    super.key,
    this.title = "Title",
    this.performer = "Name",
    this.date = "Date",
    this.location = "Location"
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 341,
      height: 189,
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: DisplayConstants.getTicketGradient()
            )
          ),
          //Title
          child: Column(
            children: [
              Stack(
                children: [
                  //Border
                  Text(
                    title.toUpperCase(),
                    style: TextStyle(
                        fontFamily: "Lexend Mega",
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.black,
                    )
                  ),
                  //Fill
                  Text(
                      title.toUpperCase(),
                      style: TextStyle(
                          fontFamily: "Lexend Mega",
                          fontSize: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset.fromDirection(1.4, 6),
                              blurRadius: 5
                            )
                          ]
                      )
                  )
                ],
              ),
              //For music note pic
              Flex(
                direction: Axis.vertical,
                children: [
                  Image(
                    image: Image.asset("assets/UI/Icons/Music_Note_Line.png").image
                  )
                ]
              ),
              //Lower row
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            performer.toUpperCase(),
                            style: TextStyle(
                                fontFamily: "Lexend Mega",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset.fromDirection(1.4, 6),
                                      blurRadius: 5
                                  )
                                ]
                            )
                        ),
                        Text(
                            date,
                            style: TextStyle(
                                fontFamily: "Lexend Mega",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset.fromDirection(1.4, 6),
                                      blurRadius: 5
                                  )
                                ]
                            )
                        ),
                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                            fontFamily: "Lexend Mega",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: Offset.fromDirection(1.4, 6),
                                  blurRadius: 5
                              )
                            ]
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    )
                  ],
                )
              )
            ]
          )
      ),
    );
  }
  
}