import 'package:dio/dio.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';

String apikey = '0deb06dcec6670e3876fa714ed5cdbc9';

Future<CityNameToLatLon> getWeatherData(String city) async {
  final response = await Dio().get(
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apikey');
  if (response.statusCode == 200) {
    return CityNameToLatLon.fromJson(response.data);
  } else {
    throw Exception(cityNotFondFromJson(response.data).message);
  }
}

Future<WeatherDataType> getweatherbylocation(double lat, double lon) async {
  final response = await Dio().get(
      'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apikey&units=metric&exclude=minutely');
  if (response.statusCode == 200) {
    return WeatherDataType.fromJson(response.data);
  } else {
    throw Exception(cityNotFondFromJson(response.data).message);
  }
}
