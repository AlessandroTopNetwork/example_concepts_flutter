class Album{ // mappatura di una response di uan chaimat api ad un servizio
  final int userId;
  final int id;
  final String title;

  const Album(
      {required this.userId,
      required this.id,
      required this.title});

  factory Album.fromJson(Map<String,dynamic> jsonSource){ // metodo di trasformazione dalla response json to dto model
    return Album(userId: jsonSource['userId'], id: jsonSource['id'], title: jsonSource['title']);
  }

}