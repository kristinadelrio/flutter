import 'package:flutter_app/src/article.dart';
import 'dart:convert' as json;
import 'package:flutter_app/serializers.dart';

List<int> parseTopStories(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  Article article = serializers.deserializeWith(Article.serializer, parsed);
  return article;
}