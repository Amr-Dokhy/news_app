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
            articleModel.image ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvvyE4zqnOFYBHSEtasMhQvd_08zPrbd9ikNO3H28SWKlkC_N6bN39Krw&s=10',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 9),
        Text(
          articleModel.title ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        SizedBox(height: 20),
        Text(articleModel.subTitle ?? ''),
      ],
    );
  }
}
