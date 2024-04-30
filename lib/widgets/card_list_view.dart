import 'package:flutter/material.dart';
import 'package:news_app/models/list_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
    required this.items,
  });

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            item: items[index],
          );
        },
      ),
    );
  }
}
