import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListView extends StatefulWidget {
  NewsTileListView({super.key});
  @override
  State<NewsTileListView> createState() => _NewsTileListViewState();
}

class _NewsTileListViewState extends State<NewsTileListView> {
  List<ArticleModel> articales = [];
  bool isLoding = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articales = await NewsServices().getGeneralNews();
    isLoding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoding
        ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 22),
                child: NewsTile(articleModel: articales[index]),
              );
            }, childCount: articales.length),
          );
  }
}
