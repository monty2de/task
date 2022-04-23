import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/modal/stage.dart';

import '../modal/period.dart';

class ApiController {
  static Future<List<stage>> getStages(int offset, int limit) async {
    List<stage> allstage = [];
    offset = offset + 1;
    http.Response response = await http
        .get(Uri.parse('https://csuot.herokuapp.com/v1/stages/?per_page=$limit'
            '&page=$offset'));

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> body = jsonDecode(response.body);

      int len = body['results'].length;
      int i;
      for (i = 0; i < len; i++) {
        stage add = stage.fromJson(body['results'][i]);
        allstage.add(add);
      }
    }
    return allstage;
  }

  static Future<List<Period>> getPeriods(int offset, int limit) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // ignore: non_constant_identifier_names
    var access_token = sharedPreferences.getString('access_token');
    List<Period> allPeriod = [];
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $access_token'
    };
    offset = offset + 1;
    http.Response response = await http.get(
        Uri.parse(
          'https://csuot.herokuapp.com/v1/periods/?per_page=$limit'
          '&page=$offset',
        ),
        headers: headers);

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> body = jsonDecode(response.body);

      int len = body['results'].length;
      int i;
      for (i = 0; i < len; i++) {
        Period add = Period.fromJson(body['results'][i]);
        allPeriod.add(add);
      }
    }
    return allPeriod;
  }
}
