import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=keyword&apiKey=7f2f656265a1423db4914fbe2f85fdfb');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        source: Source(
          id: article['source']['id'],
          name: article['source']['name'],
        ),
        Subtitle: article['description'],
        image: article['urlToImage'],
        title: article['title'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
