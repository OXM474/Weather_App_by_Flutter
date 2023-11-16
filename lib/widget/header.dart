import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/models/weather_data_type.dart';
import 'package:intl/intl.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.data});
  final WeatherDataType? data;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String date = DateFormat('yMMMMd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topLeft,
          child: Text(
            '${widget.data!.timezone}',
            style: const TextStyle(fontSize: 35, height: 2),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          alignment: Alignment.topLeft,
          child: Text(
            date,
            style:
                const TextStyle(fontSize: 17, color: Colors.grey, height: 1.2),
          ),
        )
      ],
    );
  }
}
