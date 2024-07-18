import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_list_view.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(imges: 'assets/sport.jpg', categoryname: 'sport'),
    CategoryModel(imges: 'assets/Business.jpg', categoryname: 'Business'),
    CategoryModel(
        imges: 'assets/Entertainment.jpg', categoryname: 'Entertainment'),
    CategoryModel(imges: 'assets/Health.jpg', categoryname: 'Health'),
    CategoryModel(imges: 'assets/technology.jpg', categoryname: 'technology'),
    CategoryModel(imges: 'assets/science.jpg', categoryname: 'science'),
  ];
  @override
  Widget build(BuildContext context) {
    return CardListView(items: category);
  }
}
