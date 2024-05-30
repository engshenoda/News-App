import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_list_view.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(imges: 'assets/natural.jpg', categoryname: 'General'),
    CategoryModel(imges: 'assets/sport.jpg', categoryname: 'sport'),
    CategoryModel(imges: 'assets/technology.jpeg', categoryname: 'Business'),
    CategoryModel(
        imges: 'assets/entertaiment.avif', categoryname: 'Entertainment'),
    CategoryModel(imges: 'assets/health.avif', categoryname: 'Health'),
  ];
  @override
  Widget build(BuildContext context) {
    return CardListView(items: category);
  }
}
