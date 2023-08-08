import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screen/model/model.dart';

class ApiHelper {
  static final apiHelper = ApiHelper._();

  ApiHelper._();

  Future<List<dynamic>> getApi() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";
    var response = await http.get(Uri.parse(link), headers: {
      "X-RapidAPI-Key": "2ec5469b06msh2197869a39425dbp1720d4jsnc70ff410f626",
      "X-RapidAPI-Host": "bhagavad-gita3.p.rapidapi.com",
    });
    var json = jsonDecode(response.body);
    return json.map((e) => HomeModal.fromJson(e)).toList();
  }
}