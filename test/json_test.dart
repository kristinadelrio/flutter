import 'package:test_api/test_api.dart';
import 'package:flutter_app/json_parsing.dart';
import 'package:http/http.dart' as http;

void main() {

  test("parses jobStories.json", () {
    const jsonString = '[19812919, 19816569, 19797594, 19817027, 19811045, 19814424, 19805727, 19814753, 19797592, 19806170, 19809181, 19813752, 19797593, 19813389, 19815259, 19810163, 19813361, 19793181, 19805674, 19785352, 19815544, 19798700, 19794372, 19785778, 19805668, 19794556, 19796482, 19803781, 19799469, 19798189, 19809893, 19797602, 19809155, 19794232, 19786748, 19794917, 19790611, 19788436, 19786024, 19785420, 19797964, 19796167, 19796801, 19789252, 19801554, 19801884, 19809239, 19808931]';
    expect(parseTopStories(jsonString).first, 19812919);

  });

  test("parses items.json", () {
    const jsonString = """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8884,8887,8869,8958,8940,8908,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";
    expect(parseArticle(jsonString).by, "dhouston");
  });

  // Bad idea to have real n etwork call in tests. We should use an Http fake
  test("parses items over network.json", () async {
    final url = 'https://hacker-news.firebaseio.com/v0/topstories.json';
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final idList = parseTopStories(res.body);
      if (idList.isNotEmpty) {
        final storyUrl = 'https://hacker-news.firebaseio.com/v0/item/${idList.first}.json';
        final storyRes = await http.get(storyUrl);
        if (storyRes.statusCode == 200) {
          expect(parseArticle(storyRes.body), isNotNull);
        }
      }
    }
  }, skip: true);
}