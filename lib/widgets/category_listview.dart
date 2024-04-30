import 'package:flutter/material.dart';
import 'package:news_app/models/list_model.dart';
import 'package:news_app/widgets/card_list_view.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<ItemModel> items = const [
    ItemModel(imges: 'assets/sport.jpg', text: 'sport'),
    ItemModel(imges: 'assets/technology.jpeg', text: 'business'),
    ItemModel(imges: 'assets/entertaiment.avif', text: 'entertaiment'),
    ItemModel(imges: 'assets/natural.jpg', text: 'general'),
    ItemModel(imges: 'assets/health.avif', text: 'health'),
    ItemModel(imges: 'assets/sport.jpg', text: 'sport'),
    ItemModel(imges: 'assets/technology.jpeg', text: 'business'),
    ItemModel(imges: 'assets/entertaiment.avif', text: 'entertaiment'),
    ItemModel(imges: 'assets/natural.jpg', text: 'general'),
    ItemModel(imges: 'assets/health.avif', text: 'health'),
  ];
  @override
  Widget build(BuildContext context) {
    return CardListView(items: items);
  }
}
