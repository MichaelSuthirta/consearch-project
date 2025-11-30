import 'package:cloud_firestore/cloud_firestore.dart';

class ConcertDBConnector{
  static const String COLLECTION_NAME = "concerts";
  final CollectionReference db = FirebaseFirestore.instance.collection(COLLECTION_NAME);

  static ConcertDBConnector? instance;

  static ConcertDBConnector getInstance(){
    instance ??= ConcertDBConnector();
    return instance!;
  }

  Future<List<QueryDocumentSnapshot<Object?>>> fetchAllConcerts() async{
    var dataResponse = await db.get();

    print("Fetching data");

    return dataResponse.docs;
  }
}