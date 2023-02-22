import 'package:apifetch/uniq_categories/uniqcatmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UniqCatApi {
  static var client = http.Client();
  static Future<List<UniqCategory>?> fetchUniqCat() async {
    var response =
        await client.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));

    if (response.statusCode == 200) {
      var jsonResponse = response.body;

      // print(jsonResponse);
      return uniqCategoryFromJson(jsonResponse);
    }
  }
}
