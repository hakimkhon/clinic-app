class NewsModel {
  final String title;
  final String description;
  final String iconUrl;
  String? link;

  NewsModel({
    required this.title,
    required this.description,
    required this.iconUrl,
    this.link,
  });
}
