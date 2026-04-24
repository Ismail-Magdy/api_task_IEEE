import 'package:api_task/data/services/api_helper.dart';
import 'package:api_task/widgets/custom_app_bar_button.dart';
import 'package:api_task/widgets/news_card.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({super.key});

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: CustomAppBarButton(icon: Icons.menu),
        actions: [CustomAppBarButton(icon: Icons.notifications_none)],
      ),
      //
      body: FutureBuilder(
        future: ApiHelper().getAllArticles(),
        builder: (context, snapshot) {
          // Loading State
          if (snapshot.connectionState == .waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }
          // Error State
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          //
          final articles = snapshot.data?.articles;
          //
          if (articles == null || articles.isEmpty) {
            return const Center(
              child: Text(
                "No Articles Found",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: .bold,
                ),
              ),
            );
          }
          //
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) => NewsCard(
              title: articles[index].title,
              author: articles[index].author,
              content: articles[index].content,
              description: articles[index].description,
              publishedAt: articles[index].publishedAt,
              urlToImage: articles[index].urlToImage,
            ),
          );
        },
      ),
    );
  }
}
