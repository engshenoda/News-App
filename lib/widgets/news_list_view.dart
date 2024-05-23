import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
   final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles,});

/*
live cyicle StatefulWidget
three step to display
1-initalize state ,initState()
2-build state, build()
3-dispose state ,dispose()
*/
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            articleModel: articles[index],
          );
        },
      ),
    );
  }
}
