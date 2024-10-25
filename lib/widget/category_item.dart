

import 'package:flutter/material.dart';

import '../model/category_model.dart';
import '../views/category_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoryView(
              category: category.text,
            ),),);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              category.image,
              width: 200.0,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 200.0,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          Text(
            category.text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
