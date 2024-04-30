import 'package:flutter/material.dart';
import 'package:news_app/models/list_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(item.imges),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            item.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
