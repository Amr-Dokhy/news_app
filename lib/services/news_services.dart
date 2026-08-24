import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();
  //  Methods
  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=0e51b27bdec1480b90eeef86da6e8856',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articales = jsonData["articles"];
    List<ArticleModel> articalesList = [];
    for (var artical in articales) {
      ArticleModel articleModel = ArticleModel(
        image: artical['urlToImage'],
        title: artical['title'] ?? 'No title',
        subTitle: artical['description'] ?? '',
      );
      articalesList.add(articleModel);
    }
    return articalesList;
  }
}
