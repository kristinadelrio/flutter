import 'dart:async';
import 'dart:collection';
import '../src/article.dart';
import 'package:flutter_app/json_parsing.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

class HackerNewsBloc {

  Stream<UnmodifiableListView<Article>> get articles => _articlesSubject.stream;

  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();

  var _articles = List<Article>();

  HackerNewsBloc() {
    _updateArticles().then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
    });
  }

  List<int> _ids = [19836922, 19835608, 19812705, 19836148, 19835615, 19836028, 19837216, 19818466, 19835962];

  Future<Null> _updateArticles() async {
    final futureArticles = _ids.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);
    _articles = articles;
  }

  Future<Article> _getArticle(int id) async {
    final url = 'https://hacker-news.firebaseio.com/v0/item/$id.json';
    final res = await http.get(url);
    if (res.statusCode == 200) {
      return parseArticle(res.body);
    }
  }
}
