import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', name: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', name: 'Entertaiment'),
    CategoryModel(image: 'assets/general.avif', name: 'General'),
    CategoryModel(image: 'assets/health.avif', name: 'Health'),
    CategoryModel(image: 'assets/science.avif', name: 'Science'),
    CategoryModel(image: 'assets/sports.avif', name: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', name: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
