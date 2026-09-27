import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image ?? 'assets/deadendURL.png',
            cacheHeight: 250,
            cacheWidth: 400,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/brokenconnection.png',
                cacheHeight: 250,
                cacheWidth: 400,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        SizedBox(height: 9),
        Text(
          articleModel.title ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 20),
        Text(articleModel.subTitle ?? ''),
      ],
    );
  }
}
