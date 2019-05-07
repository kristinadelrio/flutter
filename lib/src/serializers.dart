library serializers;

import 'package:built_value/serializer.dart';
import 'package:flutter_app/src/article.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'package:flutter_app/src/serializers.g.dart';

@SerializersFor([
  Article
])

Serializers serializers = _$serializers;
Serializers standardSerializer =
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();