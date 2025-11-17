import 'package:carousel_slider/carousel_slider.dart';
import 'package:consearch/UI/Components/AppSearchBar.dart';
import 'package:consearch/UI/CreamBackground.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return CreamBackground(
        content: Column(
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
            CarouselSlider(
                items: [1, 2, 3, 4, 5].map(
                    (item){
                      return Builder(
                          builder: (BuildContext context){
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
                              width: double.maxFinite,
                              child: Text("$item"),
                            );
                          }
                      );
                    }
                ).toList(),
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true
                )
            ),

            //Grid of buttons
            GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                children: [

                ],
            )
          ],
        )
    );
  }
}