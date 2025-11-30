import 'package:consearch/DatabaseConnectors/ConcertDBConnector.dart';
import 'package:consearch/Models/Concert.dart';

class ConcertHandler{
  static  ConcertHandler? instance;

  final ConcertDBConnector db = ConcertDBConnector.getInstance();

  late final List<Concert> concertList;
  bool dataIsFetched = false;

  static ConcertHandler getInstance(){
    instance ??= ConcertHandler();
    return instance!;
  }

  Future<List<Concert>> fetchConcertList() async {
    var data = await db.fetchAllConcerts();

    try{
      //Turn data into a list
      List<Concert> concertList = data.map(
          (concert) {
            //Convert the data into a map
            var concertData = concert.data() as Map<String, dynamic>;

            //Insert values into object
            return Concert(
                ID: concert.id,
                title: concertData["title"],
                imageURL: concertData["imageURL"],
                location: concertData["location"],
                startDate: concertData["startDate"].toDate(),
                endDate: concertData["endDate"].toDate(),
                artist: concertData["artist"] ?? "Guest Stars"
            );
          }
      ).toList();

      concertList.forEach((c) => print(c.artist));

      return concertList;
    }
    catch(e){
      print(e);
      return [];
    }
  }

  Future<List<Concert>> getConcerts() async{
    if(!dataIsFetched){
      this.concertList = await fetchConcertList();
      dataIsFetched = true;
    }
    return concertList;
  }
}