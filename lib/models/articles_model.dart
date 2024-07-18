class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;

  ArticleModel( 
      {required this.url,required this.image, required this.title, required this.subtitle});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      url : json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}
