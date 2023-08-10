import 'package:flutter/material.dart';
import 'package:weather_app_gsg/models/location.dart';
import 'package:weather_app_gsg/models/weather_model.dart';
import 'package:weather_app_gsg/services/weahter_data.dart';
import 'package:weather_app_gsg/utilities/constants.dart';
import 'package:weather_app_gsg/views/home.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  getloactionweather() async {
    var weatherData = WeatherModel();
    await weatherData.getLoactionWeather();
    if (mounted) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HompPage(weatherData: weatherData),
          ));
    }
  }

  @override
  void initState() {
    getloactionweather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
