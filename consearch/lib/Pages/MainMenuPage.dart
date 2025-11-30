import 'package:carousel_slider/carousel_slider.dart';
import 'package:consearch/Tools/ConcertDataProcessor.dart';
import 'package:consearch/Tools/ConcertWidgetGenerator.dart';
import 'package:consearch/UI/Buttons/IconTextButton.dart';
import 'package:consearch/UI/Buttons/NumberedButton.dart';
import 'package:consearch/UI/Components/AppListView.dart';
import 'package:consearch/UI/Components/AppSearchBar.dart';
import 'package:consearch/UI/Components/ConcertCarousel.dart';
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
            Container(
              height: 125,
              alignment: Alignment.center,
              child: TwoColumnsGrid(
                  widgetList: [
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Monas_Icon.png",
                          onPress: (){
                            print("Clicked");
                          },
                          width: 50,
                          height: 25,
                          text: "LOCAL"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Globe_Icon.png",
                          onPress: (){
                            print("Clicked");
                          },
                          width: 50,
                          height: 10,
                            text: "INTERNATIONAL"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Pensi_Icon.png",
                          onPress: (){
                            print("Clicked");
                          },
                          width: 50,
                          height: 25,
                          text: "PENSI"
                      ),
                      IconTextButton(
                          iconPath: "assets/UI/Icons/Calendar_Icon.png",
                          onPress: (){
                            print("Clicked");
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
            // //TODO: Refactor into one class (with width and height) after connect to db
            // CarouselSlider(
            //     items: [1, 2, 3, 4, 5].map((item){
            //           return Builder(
            //               builder: (BuildContext context){
            //                 return Container(
            //                   decoration: BoxDecoration(
            //                       color: Colors.grey,
            //                       borderRadius: BorderRadius.circular(10)
            //                   ),
            //                   alignment: Alignment.center,
            //                   margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
            //                   width: 80,
            //                   child: Text("$item"),
            //                 );
            //               }
            //           );
            //         }
            //     ).toList(),
            //     options: CarouselOptions(
            //         height: 120,
            //         viewportFraction: 0.25,
            //         autoPlay: true
            //     )
            // ),

            //For list
            const Text(
              "Best Seller",
              style: TextStyle(
                  fontFamily: "Lexend Deca",
                  fontSize: 12
              ),
            ),

            Expanded(
              child: AppListView(
                  widgets: [
                    NumberedButton(
                        text: "Abcd",
                        imgPath: "",
                        number: "1",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Efgh",
                        imgPath: "",
                        number: "2",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Ijkl",
                        imgPath: "",
                        number: "3",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Mnop",
                        imgPath: "",
                        number: "4",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Qrst",
                        imgPath: "",
                        number: "5",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Uv",
                        imgPath: "",
                        number: "6",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Wx",
                        imgPath: "",
                        number: "7",
                        onPress: (){}
                    ),
                    NumberedButton(
                        text: "Yz",
                        imgPath: "",
                        number: "8",
                        onPress: (){}
                    ),
                  ]
              ),
            )
          ],
        )
    );
  }
}