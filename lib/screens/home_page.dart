import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(bottom: 22),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            NewsListView(),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     childCount: 10,
            //     (context, index) {
            //       return const NewsTile();
            //     },
            //   ),
            // ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryListView(),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
