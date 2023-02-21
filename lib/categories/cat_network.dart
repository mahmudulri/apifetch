import 'dart:convert';

import 'package:apifetch/categories/catmodel.dart';
import 'package:http/http.dart' as http;

class CatApi {
  static var client = http.Client();
  static Future<List<CatModel>?> fetchAllcats() async {
    var response =
        await http.get(Uri.parse("https://api.escuelajs.co/api/v1/categories"));

    if (response.statusCode == 200) {
      var myjsondata = response.body;
      print(myjsondata);

      return catModelFromJson(myjsondata);
    }
  }
}
