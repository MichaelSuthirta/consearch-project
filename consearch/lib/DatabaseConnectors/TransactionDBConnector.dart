import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consearch/Models/TicketTransaction.dart';

class TransactionDBConnector{
  final String COLLECTION_NAME = "transactions";
  late final CollectionReference db;

  static TransactionDBConnector? instance;

  TransactionDBConnector(){
    db = FirebaseFirestore.instance.collection(COLLECTION_NAME);
  }

  static TransactionDBConnector getInstance(){
    instance ??= TransactionDBConnector();
    return instance!;
  }

  Future<List<QueryDocumentSnapshot<Object?>>> getUserTickets(String userID) async {
      var response = await db.where("userID", isEqualTo: userID).get();

      return response.docs;
  }

  Future<TicketTransaction> createTicket(String userID, String concertID, String code, String barcodeURL) async {
    DocumentReference reference = await db.add({
      "userID" : userID,
      "concertID" : concertID,
      "code" : code,
      "barcodeURL" : barcodeURL
    });

    TicketTransaction newTicket = TicketTransaction(reference.id, userID, concertID, code, barcodeURL);

    return newTicket;
  }
}