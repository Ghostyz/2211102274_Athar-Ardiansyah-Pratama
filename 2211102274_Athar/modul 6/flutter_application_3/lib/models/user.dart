class Album {
  final int userId;
  final int id;
  final String title;

  const Album({required this.userId, required this.id, required this.title});

  // Mengonversi dari JSON ke objek Album
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json['user_id'], id: json['id'], title: json['title']);
  }

  // Mengonversi dari objek Album ke JSON
  Map<String, dynamic> toJson() {
    return {'user_id': userId, 'id': id, 'title': title};
  }
}
