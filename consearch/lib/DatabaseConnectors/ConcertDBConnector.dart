import 'package:cloud_firestore/cloud_firestore.dart';

class ConcertDBConnector{
  final String COLLECTION_NAME = "concerts";
  late final CollectionReference db;

  static ConcertDBConnector? instance;

  ConcertDBConnector(){
    db = FirebaseFirestore.instance.collection(COLLECTION_NAME);
  }

  static ConcertDBConnector getInstance(){
    instance ??= ConcertDBConnector();
    return instance!;
  }

  Future<List<QueryDocumentSnapshot<Object?>>> fetchAllConcerts() async{
    var dataResponse = await db.get();

    print("Fetching data");

    return dataResponse.docs;
  }

  // Future<List<QueryDocumentSnapshot<Object?>>> getConcertByCategory(String category) async{
  //   var dataResponse = await db.where("category", isEqualTo: category.toLowerCase()).get();
  //
  //   print("Fetching data");
  //
  //   return dataResponse.docs;
  // }
}