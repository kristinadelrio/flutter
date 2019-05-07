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

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'kids',
      serializers.serialize(object.kids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.descendants != null) {
      result
        ..add('descendants')
        ..add(serializers.serialize(object.descendants,
            specifiedType: const FullType(int)));
    }
    if (object.poll != null) {
      result
        ..add('poll')
        ..add(serializers.serialize(object.poll,
            specifiedType: const FullType(int)));
    }
    if (object.by != null) {
      result
        ..add('by')
        ..add(serializers.serialize(object.by,
            specifiedType: const FullType(String)));
    }
    if (object.parent != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(object.parent,
            specifiedType: const FullType(String)));
    }
    if (object.parts != null) {
      result
        ..add('parts')
        ..add(serializers.serialize(object.parts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.deleted != null) {
      result
        ..add('deleted')
        ..add(serializers.serialize(object.deleted,
            specifiedType: const FullType(bool)));
    }
    if (object.dead != null) {
      result
        ..add('dead')
        ..add(serializers.serialize(object.dead,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'descendants':
          result.descendants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'poll':
          result.poll = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'kids':
          result.kids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'parts':
          result.parts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dead':
          result.dead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

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
  final int poll;
  @override
  final String type;
  @override
  final String url;
  @override
  final String by;
  @override
  final String title;
  @override
  final String parent;
  @override
  final BuiltList<int> kids;
  @override
  final BuiltList<int> parts;
  @override
  final bool deleted;
  @override
  final bool dead;

  factory _$Article([void updates(ArticleBuilder b)]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.id,
      this.score,
      this.time,
      this.descendants,
      this.poll,
      this.type,
      this.url,
      this.by,
      this.title,
      this.parent,
      this.kids,
      this.parts,
      this.deleted,
      this.dead})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Article', 'id');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Article', 'time');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Article', 'type');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Article', 'url');
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
        poll == other.poll &&
        type == other.type &&
        url == other.url &&
        by == other.by &&
        title == other.title &&
        parent == other.parent &&
        kids == other.kids &&
        parts == other.parts &&
        deleted == other.deleted &&
        dead == other.dead;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        score.hashCode),
                                                    time.hashCode),
                                                descendants.hashCode),
                                            poll.hashCode),
                                        type.hashCode),
                                    url.hashCode),
                                by.hashCode),
                            title.hashCode),
                        parent.hashCode),
                    kids.hashCode),
                parts.hashCode),
            deleted.hashCode),
        dead.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('id', id)
          ..add('score', score)
          ..add('time', time)
          ..add('descendants', descendants)
          ..add('poll', poll)
          ..add('type', type)
          ..add('url', url)
          ..add('by', by)
          ..add('title', title)
          ..add('parent', parent)
          ..add('kids', kids)
          ..add('parts', parts)
          ..add('deleted', deleted)
          ..add('dead', dead))
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

  int _poll;
  int get poll => _$this._poll;
  set poll(int poll) => _$this._poll = poll;

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

  String _parent;
  String get parent => _$this._parent;
  set parent(String parent) => _$this._parent = parent;

  ListBuilder<int> _kids;
  ListBuilder<int> get kids => _$this._kids ??= new ListBuilder<int>();
  set kids(ListBuilder<int> kids) => _$this._kids = kids;

  ListBuilder<int> _parts;
  ListBuilder<int> get parts => _$this._parts ??= new ListBuilder<int>();
  set parts(ListBuilder<int> parts) => _$this._parts = parts;

  bool _deleted;
  bool get deleted => _$this._deleted;
  set deleted(bool deleted) => _$this._deleted = deleted;

  bool _dead;
  bool get dead => _$this._dead;
  set dead(bool dead) => _$this._dead = dead;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _score = _$v.score;
      _time = _$v.time;
      _descendants = _$v.descendants;
      _poll = _$v.poll;
      _type = _$v.type;
      _url = _$v.url;
      _by = _$v.by;
      _title = _$v.title;
      _parent = _$v.parent;
      _kids = _$v.kids?.toBuilder();
      _parts = _$v.parts?.toBuilder();
      _deleted = _$v.deleted;
      _dead = _$v.dead;
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
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              id: id,
              score: score,
              time: time,
              descendants: descendants,
              poll: poll,
              type: type,
              url: url,
              by: by,
              title: title,
              parent: parent,
              kids: kids.build(),
              parts: _parts?.build(),
              deleted: deleted,
              dead: dead);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        kids.build();
        _$failedField = 'parts';
        _parts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
