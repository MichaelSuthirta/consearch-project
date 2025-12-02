import 'package:consearch/UI/Components/ConcertListView.dart';
import 'package:consearch/UI/CreamBackground.dart';
import 'package:consearch/UI/DisplayConstants.dart';
import 'package:flutter/material.dart';

class ConcertListPage extends StatelessWidget{
  String category;

  ConcertListPage({
    super.key,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return CreamBackground(
        content: Flex(
          direction: Axis.vertical,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 10,
              ),
              child: Flex(
                direction: Axis.vertical,
                children: [

                  //Category
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    margin: EdgeInsets.fromLTRB(0, 3, 0, 10),
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: RadialGradient(
                        colors: DisplayConstants.creamGradient,
                        radius: 3
                      )
                    ),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        category.toUpperCase(),
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: "Lexend Mega",
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(0, 2),
                              blurRadius: 3
                            )
                          ]
                        ),
                      ),
                    ),
                  ),

                  //Location
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/UI/Icons/Location_Icon.png"),
                      ),
                      Text(
                        "BANDUNG",
                        style: TextStyle(
                          fontFamily: "Lexend Mega",
                          fontWeight: FontWeight.w700,
                          fontSize: 11
                        ),
                      )
                    ],
                  )
                ],
              )
            ),

            //List
            Expanded(
                child: ConcertListView(
                  parentContext: context,
                  category: category,
                )
            )

          ],
        )
    );
  }

}