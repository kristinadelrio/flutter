import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {

  static Serializer<Article> get serializer => _$articleSerializer;

  int get id;

  @nullable
  int get score;

  int get time;

  @nullable
  int get descendants;

  @nullable
  int get poll;


  /// This is type of article
  ///
  /// 'job', 'story', 'comment', 'poll', 'pollopt'
  String get type;

  String get url;

  @nullable
  String get by;

  String get title;

  @nullable
  String get parent;

  BuiltList<int> get kids;

  @nullable
  BuiltList<int> get parts;

  @nullable
  bool get deleted;

  @nullable
  bool get dead;

  Article._();
  
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}
