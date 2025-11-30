import 'package:carousel_slider/carousel_slider.dart';
import 'package:consearch/Tools/ConcertWidgetGenerator.dart';
import 'package:flutter/material.dart';

class ConcertCarousel extends StatelessWidget{
  ConcertWidgetGenerator widgetGenerator = ConcertWidgetGenerator.getInstance();
  final bool isBigCarousel;
  double? viewportFraction;
  
  ConcertCarousel({
    super.key,
    this.isBigCarousel = true
  });

  @override
  Widget build(BuildContext context) {

    return ListenableBuilder(
        listenable: widgetGenerator,
        builder: (BuildContext context, Widget? child){
          List<Widget> widgets = widgetGenerator.createCarouselComp(isBigCarousel);
          return CarouselSlider(
              items: widgets,
              options: CarouselOptions(
                  height: isBigCarousel ? 175 : 120,
                  viewportFraction: isBigCarousel ? 0.8 : 0.25,
                  autoPlay: true
              )
          );
        }
    );
  }

}