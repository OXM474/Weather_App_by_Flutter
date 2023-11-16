import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';

class DailyWeather extends StatelessWidget {
  const DailyWeather({super.key, required this.data});
  final WeatherDataType data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xffE4E4EE).withAlpha(150),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Next Days',
              style: TextStyle(fontSize: 17, color: Color(0xff171717)),
            ),
          ),
          dailyDetailsList(),
        ],
      ),
    );
  }

  Widget dailyDetailsList() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: data.daily!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [Container()],
          );
        },
      ),
    );
  }
}
