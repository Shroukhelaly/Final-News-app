import 'package:dio/dio.dart';
import 'package:final_news_app/views/category_list_view.dart';
import 'package:final_news_app/widget/news_item.dart';
import 'package:final_news_app/widget/news_list_view_builder.dart';
import 'package:flutter/material.dart';

import '../model/artical_model.dart';
import '../services/news_services.dart';
import '../widget/news_list_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: "News ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.orange,
              ),
            ),
          ]),
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // SliverAppBar(
            //   centerTitle: true,
            //   title: RichText(
            //     text: const TextSpan(children: [
            //       TextSpan(
            //         text: "News ",
            //         style: TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.w600,
            //           color: Colors.black,
            //         ),
            //       ),
            //       TextSpan(
            //         text: "App",
            //         style: TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.w600,
            //           color: Colors.orange,
            //         ),
            //       ),
            //     ]),
            //   ),
            // ),
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
