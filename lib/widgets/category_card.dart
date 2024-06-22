import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryVeiw(
            category: category.categoryname,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                category.imges,
                height: 150,
                width: 150,
                cacheHeight: 200 ,///decode image at the specified size
                cacheWidth: 200, ///decode image at the specified size
                fit: BoxFit.fill,
              ),
            ),
            Text(
              category.categoryname,
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
