import 'package:consearch/Pages/ConcertListPage.dart';
import 'package:consearch/UI/Buttons/IconTextButton.dart';
import 'package:consearch/UI/Components/AppSearchBar.dart';
import 'package:consearch/UI/Components/ConcertCarousel.dart';
import 'package:consearch/UI/Components/NumberedListView.dart';
import 'package:consearch/UI/Components/TwoColumnGrid.dart';
import 'package:consearch/UI/CreamBackground.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // ConcertWidgetGenerator widgetGenerator = ConcertWidgetGenerator.getInstance();

    return CreamBackground(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Row(
                children: [
                  const Expanded(
                      child: AppSearchBar()
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Image(
                        image: Image.asset("assets/UI/Icons/Bell_Icon.png").image,
                      )
                  )
                ],
              ),
            ),
            //Location
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Row(
                children: [
                  Image(
                      image: Image.asset("assets/UI/Icons/Location_Icon.png").image
                  ),
                  const Text(
                    "BANDUNG",
                    style: TextStyle(
                        fontFamily: "Lexend Mega",
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                    ),
                  )
                ],
              ),
            ),
            //Carousel
            ConcertCarousel(isBigCarousel: true),

            //Grid of buttons
            //TODO: Move widgets into WidgetGenerator
            Container(
              height: 110,
              alignment: Alignment.center,
              child: TwoColumnsGrid(
                  widgetList: [
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Monas_Icon.png",
                          onPress: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConcertListPage(category: "local")
                                )
                            );
                          },
                          width: 50,
                          height: 25,
                          text: "LOCAL"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Globe_Icon.png",
                          onPress: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConcertListPage(category: "international")
                                )
                            );
                          },
                          width: 50,
                          height: 10,
                            text: "INTERNATIONAL"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Pensi_Icon.png",
                          onPress: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConcertListPage(category: "pensi")
                                )
                            );
                          },
                          width: 50,
                          height: 25,
                          text: "PENSI"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Calendar_Icon.png",
                          onPress: (){

                          },
                          width: 50,
                          height: 25,
                          text: "SCHEDULE"
                      )
                  ]
              )
            ),

            const Text(
              "Recommendations",
              style: TextStyle(
                fontFamily: "Lexend Deca",
                fontSize: 12
              ),
            ),

            //Recommendation Carousel
            ConcertCarousel(isBigCarousel: false),
            //For list
            const Text(
              "Best Seller",
              style: TextStyle(
                  fontFamily: "Lexend Deca",
                  fontSize: 12
              ),
            ),

            Expanded(
              child: NumberedListView(
                parentContext: context,
              )
            )
          ],
        )
    );
  }
}