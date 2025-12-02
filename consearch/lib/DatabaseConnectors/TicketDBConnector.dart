import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consearch/Models/Ticket.dart';

class TicketDBConnector{
  final String COLLECTION_NAME = "tickets";
  late final CollectionReference db;

  static TicketDBConnector? instance;

  TicketDBConnector(){
    db = FirebaseFirestore.instance.collection(COLLECTION_NAME);
  }

  static TicketDBConnector getInstance(){
    instance ??= TicketDBConnector();
    return instance!;
  }

  Future<List<QueryDocumentSnapshot<Object?>>> getUserTickets(String userID) async {
      var response = await db.where("userID", isEqualTo: userID).get();

      return response.docs;
  }

  Future<Ticket> createTicket(String userID, String concertID, String code, String barcodeURL) async {
    DocumentReference reference = await db.add({
      "userID" : userID,
      "concertID" : concertID,
      "code" : code,
      "barcodeURL" : barcodeURL
    });

    Ticket newTicket = Ticket(reference.id, userID, concertID, code, barcodeURL);

    return newTicket;
  }
}