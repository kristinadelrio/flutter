import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {

  static Serializer<Article> get serializer => _$articleSerializer;

  int get id;

  @nullable
  int get score;

  @nullable
  int get time;

  @nullable
  int get descendants;
  
  @nullable
  int get poll;

  @nullable
  String get type;

  @nullable
  String get url;

  @nullable
  String get by;

  @nullable
  String get title;

  @nullable
  String get parent;

  @nullable
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
