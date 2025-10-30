import 'package:consearch/UI/Components/BorderedText.dart';
import 'package:consearch/UI/DisplayConstants.dart';
import 'package:consearch/UI/TextContainers/TicketDetailContainer.dart';
import 'package:flutter/material.dart';

class TicketPass extends StatelessWidget{
  String concertName, audienceName, seat, location, day, date, code;
  String? barcodeImgPath;


  TicketPass({
    this.concertName = "Concert Name",
    this.audienceName = "Name",
    this.seat = "Seat",
    this.location = "Place",
    this.day = "Day",
    this.date = "DD Mon YYYY",
    this.code = "Code",
    this.barcodeImgPath
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
          borderRadius: BorderRadius.circular(25)
        ),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 5),
              child: Flex(
                direction: Axis.vertical,
                children: [
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
            Container(
              color: DisplayConstants.getDarkPurpleBg(),
              width: double.maxFinite,
              height: 200,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
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
                            content: "Lort Aeriks Turu Augh"
                        ),
                        TicketDetailContainer(
                            label: "Date",
                            content: "31 December 2025"
                        ),
                        TicketDetailContainer(
                            label: "Seat",
                            content: "07A"
                        ),
                        TicketDetailContainer(
                            label: "Place",
                            content: "Mall Paris van Java Bandung"
                        ),
                      ],
                    )
                  )
                ],
              )
            )
          ],
        ),
      )
    );
  }
  
  
}