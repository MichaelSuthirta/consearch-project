import 'package:consearch/Models/Concert.dart';
import 'package:consearch/Pages/DetailsPage.dart';
import 'package:consearch/Tools/Handlers/ConcertHandler.dart';
import 'package:consearch/UI/Buttons/NumberedButton.dart';
import 'package:flutter/material.dart';

class ConcertWidgetGenerator extends ChangeNotifier{
  static ConcertWidgetGenerator? instance;
  List<Concert> concertList = List.empty(growable: true);

  ConcertHandler processor = ConcertHandler.getInstance();

  ConcertWidgetGenerator(){
    getData();
  }

  static ConcertWidgetGenerator getInstance(){
    instance ??= ConcertWidgetGenerator();
    return instance!;
  }

  void getData() async{
    print("getData is called");
    concertList = await processor.getConcerts();
    notifyListeners();
    print("Data acquired");
  }

  List<Widget> createCarouselComp(bool isBigCarousel){
    List<Widget> widgets;

    double borderRadius =  isBigCarousel ? 25 : 10;

    int maxItem = isBigCarousel ? 5 : 15;
    
    if(concertList.isNotEmpty) {
      print("Image exists");
      if(concertList.length < maxItem){
        maxItem = concertList.length;
      }
      
      widgets = concertList.take(maxItem).map(
              (concert) =>
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(borderRadius),
                    image: DecorationImage(
                      image: Image.network(concert.imageURL).image,
                      fit: BoxFit.fill
                    ),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
                width: double.maxFinite,
              )
      ).toList();
    }
    else {
      print("Image doesn't exist");
      widgets = [1, 2, 3, 4, 5].map(
          (item) {
            return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
                    width: double.maxFinite,
                    child: const CircularProgressIndicator(),
                  );
                }
            );
          }
      ).toList();
    }
    return widgets;
  }

  List<Widget> createNumberedListComp(BuildContext context){
    List<Widget> widgets = List.empty(growable: true);

    if(concertList.isNotEmpty) {
      print("Creating list");

      for(int i = 0; i < concertList.length; i++){
        widgets.add(
          NumberedButton(
              text: concertList[i].title,
              imgPath: concertList[i].imageURL,
              number: (i+1).toString(),
              onPress: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => DetailsPage(concert: concertList[i])
                  )
                );
              }
          )
        );
      }
      print("List created.");
    }
    else {
      widgets = [1, 2, 3, 4, 5].map(
              (item) {
            return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
                    width: double.maxFinite,
                    child: const CircularProgressIndicator(),
                  );
                }
            );
          }
      ).toList();
    }
    return widgets;
  }
}