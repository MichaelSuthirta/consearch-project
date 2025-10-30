import 'package:flutter/material.dart';

class TicketDetailContainer extends StatelessWidget{
  final String label, content;
  
  const TicketDetailContainer({
    super.key,
    required this.label,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(100, 107, 169, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 2),
            spreadRadius: 1,
            blurRadius: 2
          )
        ]
      ),
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      height: 50,
      child: Column(
        // direction: Axis.vertical,
        children: [
          Container(
            child: Text(
              label.toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                fontFamily: "Lexend Mega",
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            )
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(
                fontSize: 15,
                fontFamily: "Lexend Mega",
                fontWeight: FontWeight.w600,
                color: Colors.white,
                overflow: TextOverflow.ellipsis
              ),
            )
          ),
        ],
      )
    );
  }
}