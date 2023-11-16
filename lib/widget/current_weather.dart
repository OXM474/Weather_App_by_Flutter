import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key, required this.data});
  final WeatherDataType data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        temp(),
        const SizedBox(
          height: 17,
        ),
        weatherdetail(),
      ],
    );
  }

  Widget temp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'images/weather/${data.current!.weather![0].icon}.png',
          height: 100,
          width: 100,
        ),
        Container(
          height: 80,
          width: 1,
          color: const Color(0xffE4E4EE),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: '${data.current!.temp!.round()}°C',
            style: const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w600,
                color: Color(0xff171717)),
          ),
          TextSpan(
            text: '${data.current!.weather![0].description}',
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w100, color: Colors.grey),
          ),
        ]))
      ],
    );
  }

  Widget weatherdetail() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xffE9ECF1),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset('images/icons/clouds.png'),
            ),
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xffE9ECF1),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset('images/icons/humidity.png'),
            ),
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xffE9ECF1),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset('images/icons/windspeed.png'),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
              width: 70,
              child: Text(
                '${data.current!.clouds}%',
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 70,
              child: Text(
                '${data.current!.humidity}%',
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 70,
              child: Text(
                '${data.current!.windSpeed}km/h',
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],
    );
  }
}
