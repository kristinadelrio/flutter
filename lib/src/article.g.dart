// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

class _$Article extends Article {
  @override
  final int id;
  @override
  final int score;
  @override
  final int time;
  @override
  final int descendants;
  @override
  final String type;
  @override
  final String url;
  @override
  final String by;
  @override
  final String title;
  @override
  final BuiltList kids;

  factory _$Article([void updates(ArticleBuilder b)]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.id,
      this.score,
      this.time,
      this.descendants,
      this.type,
      this.url,
      this.by,
      this.title,
      this.kids})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Article', 'id');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('Article', 'score');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Article', 'time');
    }
    if (descendants == null) {
      throw new BuiltValueNullFieldError('Article', 'descendants');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Article', 'type');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Article', 'url');
    }
    if (by == null) {
      throw new BuiltValueNullFieldError('Article', 'by');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Article', 'title');
    }
    if (kids == null) {
      throw new BuiltValueNullFieldError('Article', 'kids');
    }
  }

  @override
  Article rebuild(void updates(ArticleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        id == other.id &&
        score == other.score &&
        time == other.time &&
        descendants == other.descendants &&
        type == other.type &&
        url == other.url &&
        by == other.by &&
        title == other.title &&
        kids == other.kids;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), score.hashCode),
                                time.hashCode),
                            descendants.hashCode),
                        type.hashCode),
                    url.hashCode),
                by.hashCode),
            title.hashCode),
        kids.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('id', id)
          ..add('score', score)
          ..add('time', time)
          ..add('descendants', descendants)
          ..add('type', type)
          ..add('url', url)
          ..add('by', by)
          ..add('title', title)
          ..add('kids', kids))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  int _descendants;
  int get descendants => _$this._descendants;
  set descendants(int descendants) => _$this._descendants = descendants;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  BuiltList _kids;
  BuiltList get kids => _$this._kids;
  set kids(BuiltList kids) => _$this._kids = kids;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _score = _$v.score;
      _time = _$v.time;
      _descendants = _$v.descendants;
      _type = _$v.type;
      _url = _$v.url;
      _by = _$v.by;
      _title = _$v.title;
      _kids = _$v.kids;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void updates(ArticleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    final _$result = _$v ??
        new _$Article._(
            id: id,
            score: score,
            time: time,
            descendants: descendants,
            type: type,
            url: url,
            by: by,
            title: title,
            kids: kids);
    replace(_$result);
    return _$result;
  }
}
