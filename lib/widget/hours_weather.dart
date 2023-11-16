import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';

class HoursWeather extends StatelessWidget {
  const HoursWeather({super.key, required this.data});
  final WeatherDataType data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          alignment: Alignment.topCenter,
          child: const Text(
            "Today",
            style: TextStyle(fontSize: 18),
          ),
        ),
        hourswidget(),
      ],
    );
  }

  Widget hourswidget() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.daily!.length > 7 ? 7 : data.daily!.length,
        itemBuilder: (context, index) {
          return Container(
            width: 90,
            margin: const EdgeInsets.only(left: 20, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xff408ADE), Color(0xff5286CD)],
              ),
            ),
            child: HoursDetails(
                temp: data.daily![index].temp!.day!.round(),
                day: data.daily![index].dt!,
                icon: data.daily![index].weather![0].icon!),
          );
        },
      ),
    );
  }
}

String getDay(int day) {
  DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
  final x = DateFormat('jm').format(time);
  return x;
}

class HoursDetails extends StatelessWidget {
  const HoursDetails(
      {super.key, required this.temp, required this.day, required this.icon});
  final int temp;
  final int day;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 10), child: Text(getDay(day))),
        Container(
          margin: const EdgeInsets.all(5),
          height: 40,
          width: 40,
          child: Image.asset('images/weather/$icon.png'),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Text('$temp°C'),
        )
      ],
    );
  }
}
