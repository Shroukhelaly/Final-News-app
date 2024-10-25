import 'package:final_news_app/model/artical_model.dart';
import 'package:final_news_app/widget/news_item.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsItem(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
