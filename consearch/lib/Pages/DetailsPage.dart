import 'package:consearch/Models/Concert.dart';
import 'package:consearch/UI/CreamBackground.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  final Concert concert;

  const DetailsPage({super.key, required this.concert});

  @override
  Widget build(BuildContext context) {
    return CreamBackground(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            Container(
              height: 260,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: Image.network(concert.imageURL).image,
                  fit: BoxFit.fitWidth
                )
              ),
            ),

            Text(
              concert.title.toUpperCase(),
              style: TextStyle(
                fontFamily: "Lexend Mega",
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
            ),

            Row(
              children: [
                Image(image: Image.asset("assets/UI/Icons/Location_Icon.png").image),
                Text(
                  concert.location.toUpperCase(),
                  style: const TextStyle(
                      fontFamily: "Lexend Mega",
                      fontWeight: FontWeight.w600,
                      fontSize: 11
                  ),
                )
              ],
            ),

            Row(
              children: [
                Image(image: Image.asset("assets/UI/Icons/Calendar_Icon.png").image),
                Text(
                  "${concert.startDate.day}-${concert.startDate.month}-${concert.startDate.year}",
                  style: const TextStyle(
                      fontFamily: "Lexend Mega",
                      fontWeight: FontWeight.w600,
                      fontSize: 11
                  ),
                )
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: const Text(
                "| DESCRIPTION",
                style: TextStyle(
                    fontFamily: "Lexend Mega",
                    fontWeight: FontWeight.w600,
                    fontSize: 11
                ),
              ),
            ),

            Text(
              concert.desc,
              style: const TextStyle(
                fontFamily: "Lexend Mega",
                fontWeight: FontWeight.w300,
                fontSize: 11
              ),
            )
          ],
        )
    );
  }

}