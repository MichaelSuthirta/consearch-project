import 'package:consearch/DatabaseConnectors/TicketDBConnector.dart';
import 'package:consearch/Models/Concert.dart';
import 'package:consearch/Tools/UserManagement/UserManagement.dart';
import 'package:consearch/UI/Buttons/AppButton.dart';
import 'package:consearch/UI/DisplayConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConcertContainer extends StatelessWidget{
  String concertID, imagePath, title, location, time;
  BuildContext parentContext;

  ConcertContainer({
    super.key,
    required this.concertID,
    required this.title,
    required this.imagePath,
    required this.location,
    required this.time,
    required this.parentContext
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      height: MediaQuery.of(parentContext).size.height / 3,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: DisplayConstants.ticketGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: Offset(0, 4),
            blurRadius: 3
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
            height: MediaQuery.of(parentContext).size.height / 4,
            width: double.maxFinite,
            child: Image.network(
                imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: "Lexend Mega",
                  fontWeight: FontWeight.w600,
                  fontSize: 15
              ),
            ),
          ),

          Row(
            children: [
              //Location and time
              Container(
                width: MediaQuery.of(parentContext).size.width/1.45,
                child: Column(
                  // direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              fontSize: 10
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
                              fontSize: 10
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: AppButton(
                      text: "BUY TICKET",
                      onPress: () async{
                        await TicketDBConnector.getInstance().createTicket(
                            UserManagement.getInstance().activeUser!.id,
                            concertID,
                            "XXXXXX",
                            "-"
                        );
                      },
                      width: MediaQuery.of(parentContext).size.width / 5,
                    ),
                  )

                ],
              )
            ],
          )
        ],
      ),
    );
  }

}