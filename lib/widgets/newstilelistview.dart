import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  NewsTileListView({super.key, required this.articales});
  final List<ArticleModel> articales;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: articales[index]),
        );
      }, childCount: articales.length),
    );
  }
}
