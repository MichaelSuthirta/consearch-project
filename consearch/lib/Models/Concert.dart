class Concert{
  String ID, title, location, imageURL, desc, category;
  DateTime startDate, endDate;
  String? artist;

  Concert({
    required this.ID,
    required this.title,
    required this.imageURL,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.desc,
    required this.category,
    this.artist
  });

  factory Concert.create(String id, Map<String, dynamic> map){
    return Concert(
        ID: id,
        title: map["title"],
        imageURL: map["imageURL"],
        location: map["location"],
        startDate: map["startDate"].toDate(),
        endDate: map["endDate"].toDate(),
        artist: map["artist"] ?? "Guest Stars",
        desc: map["description"],
        category: map["category"]
    );
  }

}