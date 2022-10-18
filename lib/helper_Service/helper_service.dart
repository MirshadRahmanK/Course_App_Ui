import 'package:http/http.dart' as http;

import 'package:restapi/Model_Class/modedata.dart';

class HelperService {
  String weburl = 'https://nut-case.s3.amazonaws.com/coursessc.json';
  Future<List<Courses>?> getData() async {
    var client = http.Client();
    var url = Uri.parse(weburl);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return coursesFromJson(json);
    }
  }
}

