import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/firebase_options.dart';
import 'package:weather_app_by_flutter/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(const WeatherAppByFlutter());
}

class WeatherAppByFlutter extends StatelessWidget {
  const WeatherAppByFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
