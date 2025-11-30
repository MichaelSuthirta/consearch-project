import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consearch/Models/Concert.dart';

class ConcertDBConnector{
  static const String COLLECTION_NAME = "concerts";

  static Future<List<QueryDocumentSnapshot<Object?>>> fetchAllConcerts() async{
    CollectionReference concerts = FirebaseFirestore.instance.collection('concerts');
    var dataResponse = await concerts.get();

    print("Fetching data");

    return dataResponse.docs;
  }
}