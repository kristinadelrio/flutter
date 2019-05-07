import 'package:flutter_app/src/article.dart';
import 'package:flutter_app/src/serializers.dart';
import 'dart:convert' as json;

List<int> parseTopStories(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonString) {
  final parsed = json.jsonDecode(jsonString);
  Article article = standardSerializer.deserializeWith(Article.serializer, parsed);
  return article;
}