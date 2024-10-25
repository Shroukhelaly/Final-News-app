import 'package:dio/dio.dart';
import 'package:final_news_app/widget/news_list_view.dart';
import 'package:flutter/material.dart';

import '../model/artical_model.dart';
import '../services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;

  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>>? future;

  @override
  void initState() {
    future = NewsServices(Dio()).getNews(
      category: widget.category,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops  was an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
