class itemData {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  itemData({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory itemData.fromJson(Map<String, dynamic> json) {
    return itemData(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}