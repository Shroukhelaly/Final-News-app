import 'package:final_news_app/views/category_view.dart';
import 'package:flutter/material.dart';

import '../model/category_model.dart';
import '../widget/category_item.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  List<CategoryModel> items = [
    CategoryModel(image: 'assets/business.avif', text: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Entertainment'),
    CategoryModel(image: 'assets/science.avif', text: 'Science'),
    CategoryModel(image: 'assets/general.avif', text: 'General'),
    CategoryModel(image: 'assets/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/sports.avif', text: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemBuilder: (context, index) {
          return CategoryItem(
            category: items[index],
          );
        },
      ),
    );
  }
}
