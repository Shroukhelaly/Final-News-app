import 'package:dio/dio.dart';

import '../model/artical_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category }) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=30cda324605046368e142972e510ac30');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print('result = ${jsonData['totalResults']}');


    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articleList.add(articleModel);
    }
    return articleList;
  }

}
