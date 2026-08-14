import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 140,
      margin: const EdgeInsets.only(right: 16), // مسافة بين الكروت
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(category.image)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          category.name,
          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
