import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';
import 'package:weather_app_by_flutter/service/weather_api.dart';
import 'package:weather_app_by_flutter/widget/current_weather.dart';
import 'package:weather_app_by_flutter/widget/header.dart';
import 'package:weather_app_by_flutter/widget/hours_weather.dart';

class City extends StatefulWidget {
  const City({super.key, required this.cityname});
  final String cityname;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  WeatherDataType? weather;
  CityNameToLatLon? location;

  @override
  void initState() {
    gosync();
    super.initState();
  }

  void gosync() async {
    location = await getWeatherData(widget.cityname);
    weather = await getweatherbylocation(
        location!.coord!.lat!, location!.coord!.lon!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(
          height: 12,
        ),
        Header(data: weather!),
        CurrentWeather(data: weather!),
        const SizedBox(
          height: 12,
        ),
        HoursWeather(data: weather!)
      ],
    );
  }
}
