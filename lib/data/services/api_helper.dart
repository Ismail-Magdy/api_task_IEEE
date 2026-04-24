import 'dart:convert';

import 'package:api_task/data/models/article.dart';
import 'package:http/http.dart' as http;

// https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=19f636a3c8054775bae6758c2fdfaf32

class ApiHelper {
  Future<NewsModel> getAllArticles() async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines", {
      "country": "us",
      "category": "business",
      "apiKey": "19f636a3c8054775bae6758c2fdfaf32",
    });

    final response = await http.get(url);
    final data = jsonDecode(response.body);
    return NewsModel.fromJson(data);
  }
}
