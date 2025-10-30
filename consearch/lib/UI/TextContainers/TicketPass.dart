import 'package:consearch/UI/Components/BorderedText.dart';
import 'package:consearch/UI/DisplayConstants.dart';
import 'package:consearch/UI/TextContainers/TicketDetailContainer.dart';
import 'package:flutter/material.dart';

class TicketPass extends StatelessWidget{
  String concertName, audienceName, seat, location, day, date, code;
  String barcodeImgPath;


  TicketPass({
    this.concertName = "Concert Name",
    this.audienceName = "Full Name Long Text",
    this.seat = "Seat",
    this.location = "Stadium XYZ, Mall ABC",
    this.day = "Day",
    this.date = "DD Month YYYY",
    this.code = "Code",
    this.barcodeImgPath = "assets/UI/Placeholders/BarcodePlaceholder.png"
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361,
      height: 607,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: DisplayConstants.getTicketGradient()
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 3),
                spreadRadius: 1,
                blurRadius: 2
            )
          ]
        ),

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  //Date
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      date,
                      style: TextStyle(
                          fontFamily: "Lexend Mega",
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black
                      ),
                    ),
                  ),
                  //Concert name
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 100,
                    child: BorderedText(
                      text: concertName,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    child: Image(image: Image.asset("assets/UI/Icons/Music_Note_Line.png").image),
                  ),
                ],
              ),
            ),

            //Dark purple box
            Container(
              decoration: BoxDecoration(
                color: DisplayConstants.getDarkPurpleBg(),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 3),
                      spreadRadius: 1,
                      blurRadius: 2
                  )
                ]
              ),
              width: double.maxFinite,
              height: 200,
              child: Column(
                children: [

                  //Grid view
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 124,
                    child: GridView(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3
                      ),
                      children: [
                        TicketDetailContainer(
                            label: "Name",
                            content: audienceName
                        ),
                        TicketDetailContainer(
                            label: "Date",
                            content: date
                        ),
                        TicketDetailContainer(
                            label: "Seat",
                            content: seat
                        ),
                        TicketDetailContainer(
                            label: "Place",
                            content: location
                        ),
                      ],
                    )
                  ),

                  //Last container
                  Container(
                    width: 180,
                    child: TicketDetailContainer(
                        label: "Code",
                        content: "ABCDEFG"
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40, horizontal: 5),
              child: Image(image: Image.asset(barcodeImgPath).image,),
            )
          ],
        ),
      )
    );
  }
  
  
}