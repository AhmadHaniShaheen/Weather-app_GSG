// import 'dart:convert';

import 'dart:convert';

import 'package:http/http.dart' as http;
// import 'package:weather_app_gsg/models/weather_model.dart';
import 'package:weather_app_gsg/utilities/constants.dart';

class WeatherData {
  String uri;
  WeatherData({
    required this.uri,
  });
  Future<Map<String, dynamic>> fetchWeather() async {
    final response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(response.body);
      print(data['main']['temp']);
      return data;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
