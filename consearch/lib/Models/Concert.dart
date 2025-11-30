class Concert{
  String ID, title, location, imageURL;
  DateTime startDate, endDate;
  String? artist;

  Concert({
    required this.ID,
    required this.title,
    required this.imageURL,
    required this.location,
    required this.startDate,
    required this.endDate,
    this.artist
  });


}