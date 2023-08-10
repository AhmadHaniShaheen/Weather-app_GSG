import 'package:weather_app_gsg/models/location.dart';
import 'package:weather_app_gsg/services/weahter_data.dart';
import 'package:weather_app_gsg/utilities/constants.dart';

class WeatherModel {
  late double temp;
  late String cityName;
  late String weatherMain;
  late int weatherId;

  Future<void> getLoactionWeather() async {
    Loaction location = Loaction();
    await location.getCurrentLocation();
    var weatherInfo = await WeatherData(
            uri:
                "https://api.openweathermap.org/data/2.5/weather?lat=${location.lat}&lon=${location.lon}&appid=$apiKey&units=metric")
        .fetchWeather();

    temp = weatherInfo['main']['temp'];
    weatherId = weatherInfo['weather'][0]['id'];
    weatherMain = weatherInfo['weather'][0]['main'];
    cityName = weatherInfo['name'];
  }

  String getWeatherIcon() {
    if (weatherId < 300) {
      return '🌩';
    } else if (weatherId < 400) {
      return '🌧';
    } else if (weatherId < 600) {
      return '☔️';
    } else if (weatherId < 700) {
      return '☃️';
    } else if (weatherId < 800) {
      return '🌫';
    } else if (weatherId == 800) {
      return '☀️';
    } else if (weatherId <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage() {
    if (temp > 25) {
      return 'If you must be outside, take frequent breaks in the shade.';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
