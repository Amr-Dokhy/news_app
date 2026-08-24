import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/widgets/newstilelistview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News'),
            Text('Cloud', style: TextStyle(color: Color.fromRGBO(225, 206, 139, 1))),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsTileListView(),
          ],
        ),

        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(height: 32),
        //     Expanded(child: NewsTileListView()),
        //   ],
        // ),
      ),
    );
  }
}
