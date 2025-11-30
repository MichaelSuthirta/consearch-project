import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consearch/Models/Concert.dart';

class ConcertDBConnector{
  static const String COLLECTION_NAME = "concerts";

  static Future<List<Concert>> fetchConcerts() async{
    CollectionReference concerts = FirebaseFirestore.instance.collection('concerts');

    try{
      var dataResponse = await concerts.get();

      List<Concert> concertList = dataResponse.docs.map(
          (concert) {
            var concertData = concert.data() as Map<String, dynamic>;
            return Concert(
                concert.id,
                concertData["title"],
                concertData["imageURL"],
                concertData["location"],
                concertData["startDate"].toDate(),
                concertData["endDate"].toDate(),
                concertData["artist"]
            );
          }
      ).toList();

      concertList.forEach((c) => print(c.title));

      return concertList;
    }
    catch(e){
      print(e);
      return [];
    }
  }
}