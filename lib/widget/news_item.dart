import 'package:final_news_app/model/artical_model.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  fit: BoxFit.cover,
                )
              : const Image(
            fit: BoxFit.cover,
                  image: NetworkImage(
                  'https://uxwing.com/wp-content/themes/uxwing/download/video-photography-multimedia/error-image-photo-icon.png',
                )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          articleModel.subTitle!,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subTitle!,
          style: const TextStyle(
            fontSize: 18,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
