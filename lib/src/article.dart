import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {

  int get id;
  int get score;
  int get time;
  int get descendants;
  String get type;
  String get url;
  String get by;
  String get title;
  BuiltList<dynamic> get kids;

  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}
