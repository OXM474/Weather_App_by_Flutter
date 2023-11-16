import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_by_flutter/service/weather_api.dart';
import 'package:weather_app_by_flutter/widget/current_weather.dart';
import 'package:weather_app_by_flutter/widget/daily_weather.dart';
import 'package:weather_app_by_flutter/widget/header.dart';
import 'package:weather_app_by_flutter/widget/hours_weather.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  void initState() {
    super.initState();
    print(">>>>>>");
    getLocation();
  }

  Position? currentLocation;
  WeatherDataType? weather;
  bool iserror = false;
  Exception? errmassage;

  getLocation() async {
    var permission = await Geolocator.checkPermission();
    debugPrint('$permission');
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    var location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    // setState(() {
    //   currentLocation = location;
    // });
    try {
      print("-----");
      getweatherbylocation(location!.latitude, location!.longitude)
          .then((value) => {weather = value});
      print(weather!.timezone);

      iserror = false;
      // setState(() {});
    } on Exception catch (err) {
      iserror = true;
      errmassage = err;
      debugPrint('$err');
    }
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
        Text("${weather!.timezone}")
        // Header(data: weather!),
        // CurrentWeather(data: weather!),
        // const SizedBox(
        //   height: 12,
        // ),
        // HoursWeather(data: weather!),
        // const SizedBox(
        //   height: 12,
        // ),
        // DailyWeather(data: weather!)
      ],
    );
  }
}
