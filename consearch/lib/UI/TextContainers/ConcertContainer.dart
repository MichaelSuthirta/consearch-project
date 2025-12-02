import 'package:consearch/Models/Concert.dart';
import 'package:consearch/UI/DisplayConstants.dart';
import 'package:flutter/material.dart';

class ConcertContainer extends StatelessWidget{
  String imagePath, title, location, time;

  ConcertContainer({
    super.key,
    required this.title,
    required this.imagePath,
    required this.location,
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: DisplayConstants.getTicketGradient(),
        )
      ),
      child: Column(
        children: [
          Container(
            child: Image.network(imagePath),
          ),

          Text(
            title,
            style: TextStyle(
              fontFamily: "Lexend Mega",
              fontWeight: FontWeight.w600,
              fontSize: 15
            ),
          ),

          Row(
            children: [
              //Location and time
              Column(
                children: [
                  //Location
                  Row(
                    children: [
                      Image(image: Image.asset("assets/UI/Icons/Location_Icon.png").image),
                      Text(
                        location.toUpperCase(),
                        style: const TextStyle(
                            fontFamily: "Lexend Mega",
                            fontWeight: FontWeight.w600,
                            fontSize: 11
                        ),
                      )
                    ],
                  ),

                  //Time
                  Row(
                    children: [
                      Image(image: Image.asset("assets/UI/Icons/Calendar_Icon.png").image),
                      Text(
                        time.toUpperCase(),
                        style: const TextStyle(
                            fontFamily: "Lexend Mega",
                            fontWeight: FontWeight.w600,
                            fontSize: 11
                        ),
                      )
                    ],
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }

}