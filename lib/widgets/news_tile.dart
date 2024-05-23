import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({required this.articleModel, super.key});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : const Placeholder(
                    fallbackHeight: 200,
                    fallbackWidth: double.infinity,
                  ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subtitle ?? '',
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
